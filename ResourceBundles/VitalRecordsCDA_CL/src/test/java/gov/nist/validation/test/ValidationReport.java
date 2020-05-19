package gov.nist.validation.test;

import gov.nist.healthcare.unified.exceptions.ConversionException;
import gov.nist.healthcare.unified.exceptions.NotFoundException;
import gov.nist.healthcare.unified.model.Classification;
import gov.nist.healthcare.unified.model.Detections;
import gov.nist.healthcare.unified.model.EnhancedReport;
import gov.nist.healthcare.unified.model.Section;

import java.util.*;

/**
 * Created by mcl1 on 8/20/15.
 */
public class ValidationReport {

    public static final String WARNING = "Warning";
    public static final String ERROR = "Error";

    private ArrayList<Report> profilesReport = new ArrayList<>();
    private ArrayList<Report> constraintsReport = new ArrayList<>();
    private ArrayList<Report> valueSetsReport = new ArrayList<>();
    private HashMap<String,EnhancedReport> contextfreeXMLMessagesReports = new HashMap<>();
    private HashMap<String,EnhancedReport> contextbasedXMLMessagesReports= new HashMap<>();

    private HashMap<String, ArrayList<String>> additionalErrors;
    private String resourceBundlePath;

    public ValidationReport(String resourceBundlePath, HashMap<String, EnhancedReport> contextfreeXMLMessagesReports, HashMap<String, EnhancedReport> contextbasedXMLMessagesReports, HashMap<String, ArrayList<String>> additionalErrors) {
        this.resourceBundlePath = resourceBundlePath;
        this.profilesReport = profilesReport;
        this.constraintsReport = constraintsReport;
        this.valueSetsReport = valueSetsReport;
        this.contextfreeXMLMessagesReports = contextfreeXMLMessagesReports;
        this.contextbasedXMLMessagesReports = contextbasedXMLMessagesReports;
        this.additionalErrors = additionalErrors;
    }

    public final static void clearConsole() {
        try
        {
            final String os = System.getProperty("os.name");
            if (os.contains("Windows"))
                Runtime.getRuntime().exec("cls");
            else
                Runtime.getRuntime().exec("clear");
        }
        catch (final Exception e) {}
    }

    public String toString(){
        clearConsole();
        BeautifyStringBuilder sb = new BeautifyStringBuilder(this.resourceBundlePath);
        sb.append("\n\n------- ResourceBundle Validation Report -------\n");
        sb.append(this.printReport("Profiles", profilesReport));
        sb.append(this.printReport("Constraints", constraintsReport));
        sb.append(this.printReport("Value sets", valueSetsReport));
        sb.append(this.printEnhancedReports("ContextFree XML Messages", contextfreeXMLMessagesReports));
        sb.append(this.printEnhancedReports("ContextBased XML Messages", contextbasedXMLMessagesReports));
        sb.append(this.printAdditionalErrors(additionalErrors));
        sb.append("\n\n--- Total errors : ");
        sb.append(getErrorsCount());
        sb.append(".");
        return sb.toString();
    }

    private String printAdditionalErrors(HashMap<String, ArrayList<String>> additionalErrors) {
        BeautifyStringBuilder sb = new BeautifyStringBuilder(this.resourceBundlePath);
        sb.append("\n\n - Additional detections (");
        int errorCount = getAdditionalCount(ERROR, additionalErrors);
        int warningCount = getAdditionalCount(WARNING, additionalErrors);
        if(errorCount>0) {
            sb.append(errorCount);
            sb.append(" errors,");
        } else {
            sb.append("no errors,");
        }
        if(warningCount>0) {
            sb.append(warningCount);
            sb.append(" warnings");
        } else {
            sb.append("no warnings");
        }
        sb.append(")");
        for(String key : additionalErrors.keySet()){
            sb.append("\n - "+key+"s");
            for(String message : additionalErrors.get(key)){
                sb.append("\n\t"+message);
            }
        }
        return sb.toString();
    }

    private String printEnhancedReports(String name, HashMap<String, EnhancedReport> reports) {
        BeautifyStringBuilder sb = new BeautifyStringBuilder(this.resourceBundlePath);
        sb.append("\n\n - ");
        sb.append(name);
        sb.append(" (");
        if(reports.size()>0) {
            sb.append(getErrorCountInEnhancedReports(reports));
            sb.append(" errors");
        } else {
            sb.append("no errors");
        }
        sb.append(" out of ");
        sb.append(reports.size());
        sb.append(" files tested)");
        Iterator it = reports.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, EnhancedReport> pair = (Map.Entry) it.next();
            String filename = pair.getKey();
            EnhancedReport r = pair.getValue();
            try {

                if(r!=null) {
                    int errors = getCountInClassifications(r.getDetections().classes());
                    if(errors>0) {
                        sb.append("\n - ");
                        sb.append(filename);
                        sb.append(" (");
                        sb.append(errors);
                        sb.append(" errors)");
                        Detections d = r.getDetections();
                        for (Section s : d.entries()) {
                            sb.append("\n");
                            String classification = s.getString("classification");
                            if (null != classification)
                                sb.append(classification);
                            int column = s.getInt("column");
                            int line = s.getInt("line");
                            //if(!"".equals(column)&&!"".equals(line)&&!"-1".equals(column)&&!"-1".equals(line)){
                            sb.append(" (line ");
                            sb.append(line);
                            sb.append(",column ");
                            sb.append(column);
                            sb.append(")");
                            //}
                            sb.append(" : ");
                            String description = s.getString("description");
                            if (null != description)
                                sb.append(description);
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return sb.toString();
    }

    private String printReport(String name, ArrayList<Report> reports) {
        BeautifyStringBuilder sb = new BeautifyStringBuilder(this.resourceBundlePath);
        sb.append("\n\n - ");
        sb.append(name);
        sb.append(" (");
        if(reports.size()>0) {
            sb.append(getErrorInReports(reports));
            sb.append(" errors");
        } else {
            sb.append("no errors");
        }
        sb.append(" out of ");
        sb.append(reports.size());
        sb.append(" files tested)");
        for(Report r : reports){
            sb.append(r.getReport());
        }
        return sb.toString();
    }

    private int getErrorInReports(ArrayList<Report> reports){
        int errorCount = 0;
        for(Report r : reports){
            errorCount += r.getErrorCount();
        }
        return errorCount;
    }

    public int getErrorsCount(){
        return profilesReport.size()+constraintsReport.size()+valueSetsReport.size()+getErrorCountInEnhancedReports(contextbasedXMLMessagesReports)+getErrorCountInEnhancedReports(contextfreeXMLMessagesReports)+getAdditionalCount(ERROR,this.additionalErrors);
    }

    private int getAdditionalCount(String level,HashMap<String,ArrayList<String>> map){
        for(String key : map.keySet()){
            if(key.equals(level))
                return map.get(level).size();
        }
        return 0;
    }

    private int getErrorCountInEnhancedReports(HashMap<String, EnhancedReport> reports) {
        int errorCount = 0;
        for(EnhancedReport report : reports.values()){
            if(report!=null) {
                errorCount += getCountInClassifications(report.getDetections().classes());
            }
        }
        return errorCount;
    }

    private int getCountInClassifications(ArrayList<Classification> list){
        int errorCount=0;
        Iterator<Classification> it = list.iterator();
        while (it.hasNext()){
            Classification classification = it.next();
            Set categs = classification.categs();
            for(Object categ : categs){
                try {
                    if(categ instanceof String) {
                        errorCount += classification.getArray((String)categ).size();
                    }
                } catch (Exception e) {
                    //no errors
                }
            }
        }
        return errorCount;
    }
}
