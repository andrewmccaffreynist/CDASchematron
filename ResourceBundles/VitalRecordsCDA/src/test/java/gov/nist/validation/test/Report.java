package gov.nist.validation.test;

import java.util.ArrayList;

public class Report {

    public static final String SEPARATOR = " - ";
    public static final String CARRIAGE_RETURN = "\n";
    public static final String HEADER = "File : ";
    private ArrayList<ReportItem> items = new ArrayList<ReportItem>();
    private int errorCount = 0;
    private String fileName;

    public Report(String fileName){
        this.fileName = fileName;
    }

    public void addItem(ReportItem ri){
        this.items.add(ri);
        if(ri instanceof ErrorReportItem){
            this.errorCount++;
        }
    }

    public String getReport(){
        StringBuilder report = new StringBuilder();
        if(items.size()>0){
            report.append(CARRIAGE_RETURN);
            report.append(HEADER);
            report.append(fileName);
            report.append(CARRIAGE_RETURN);
            for(ReportItem item : items){
                report.append(item.getClassification());
                report.append(SEPARATOR);
                report.append(item.toString());
                report.append(CARRIAGE_RETURN);
            }
        }
        return report.toString();
    }

    public int getErrorCount(){
        return items.size();
    }

}