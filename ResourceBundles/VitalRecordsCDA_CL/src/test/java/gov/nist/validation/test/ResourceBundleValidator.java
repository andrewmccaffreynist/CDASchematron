package gov.nist.validation.test;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import gov.nist.healthcare.unified.enums.Context;
import gov.nist.healthcare.unified.model.EnhancedReport;
import gov.nist.healthcare.unified.proxy.ValidationProxy;
import gov.nist.healthcare.unified.proxy.XMLValidationProxy;
import gov.nist.validation.test.beans.*;
import hl7.v2.validation.content.ConformanceContext;
import hl7.v2.validation.vs.ValueSetLibrary;
import hl7.v2.validation.vs.ValueSetLibraryImpl;
import org.xml.sax.SAXException;

import javax.xml.XMLConstants;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import java.io.*;
import java.net.URL;
import java.util.*;

/**
 * Created by mcl1 on 8/20/15.
 */
public class ResourceBundleValidator {

    private static final String PATH_SCHEMATRONS = "Global/Schematrons";
    private static final String PATH_CONTEXTFREE_XML = "Contextfree/XML";
    private static final String PATH_CONTEXTBASED = "Contextbased";
    private static final String CONSTRAINT_FILE = "Constraints.xml";
    private static final String XML_MESSAGE = "Message.xml";
    private static final String PROFILE_TOKEN = "profile";
    private static final String CONSTRAINTS_TOKEN = "constraint";
    private static final String VALUESET_TOKEN = "valueset";
    private static final String XML_EXTENSION = "xml";
    private static final String XML = "XML";
    private Collection<File> contextfreeXMLMessages;
    private HashMap<File, XMLTestStep> contextbasedXMLMessages = new HashMap<>();
    private Collection<String> profileFiles;
    private Collection<String> constraintFiles;
    private Collection<String> valueSetFiles;
    private Gson gson = new Gson();
    private ArrayList<String> profiles;
    private ArrayList<String> constraints;
    private ArrayList<String> valueSets;
    private ArrayList<String> schematrons;
    private ArrayList<String> schemas;
    private HashMap<String, ArrayList<String>> additionalErrors = new HashMap<>();
    private String resourceBundlePath = ClassLoader.getSystemClassLoader().getResource(".").getPath();

    public ResourceBundleValidator() {
    }

    public ValidationReport validate() throws IOException {
        return this.validate(false);
    }

    public ValidationReport validate(boolean parseResources) throws IOException {
        //To parse all the resource bundle, set parseResources at true. It will use the tokens defined as constants to identify the profile, constraints and valueset files.
        boolean isWindows = System.getProperty("os.name").toLowerCase().indexOf("win") >= 0;
        if(isWindows)
            resourceBundlePath = resourceBundlePath.substring(1);
        System.out.println("resourceBundlePath : "+resourceBundlePath);
        initFilesCollections(parseResources);
        this.contextfreeXMLMessages = ErxFileUtil.listAllFilesFromDirectory(PATH_CONTEXTFREE_XML, new String[]{"json"}, "TestObject");
        HashMap<String, EnhancedReport> contextfreeXMLMessagesReports = validateContextFreeXMLMessages(contextfreeXMLMessages);
        initContextBasedCollections();
        HashMap<String, EnhancedReport> contextbasedXMLMessagesReports = validateContextBasedMessages(contextbasedXMLMessages);
        ValidationReport report = new ValidationReport(resourceBundlePath, contextfreeXMLMessagesReports, contextbasedXMLMessagesReports, additionalErrors);
        return report;
    }

    private HashMap<String, EnhancedReport> validateContextBasedMessages(HashMap<File, ? extends TestStep> contextbasedMessages) throws IOException {
        HashMap<String, EnhancedReport> reports = new HashMap<>();
        Iterator it = contextbasedMessages.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<File, TestStep> pair = (Map.Entry) it.next();
            File file = pair.getKey();
            TestStep testStep = pair.getValue();
            if (testStep instanceof XMLTestStep) {
                Xml xmlInfos = ((XMLTestStep) testStep).getXml();
                if(xmlInfos != null) {
                    ArrayList<String> schematronPaths = new ArrayList<>();
                    for (String name : xmlInfos.getSchematronPathList()) {
                        schematronPaths.add(PATH_SCHEMATRONS + "/" + name);
                    }
                    reports.put(file.getPath() + "/" + XML_MESSAGE, validateXMLMessage(file.getPath() + "/" + XML_MESSAGE, schematronPaths, "ALL", Context.Based));
                } else {
                    addAdditionnalError(ValidationReport.ERROR, "No XML object in the Json file : " + testStep.getPath());
                }
            }
        }
        return reports;
    }

    private void initContextBasedCollections() {
        Collection<File> contextBasedFiles = null;
        try {
            contextBasedFiles = ErxFileUtil.listAllFilesFromDirectory(PATH_CONTEXTBASED, new String[]{"json"}, "TestStep");

            Gson gson = new Gson();
            for (File file : contextBasedFiles) {
                if (ErxFileUtil.getExtension(file.getName()).equals("json")) {
                    try {
                        String content = ErxFileUtil.getFileAsString(file);

                        switch (file.getName()) {
                            case "TestPlan.json":
                                TestPlan testPlan = gson.fromJson(content, TestPlan.class);
                                break;
                            case "TestCaseGroup.json":
                                TestCaseGroup testCaseGroup = gson.fromJson(content, TestCaseGroup.class);
                                break;
                            case "TestStory.json":
                                TestStory testStory = gson.fromJson(content, TestStory.class);
                                break;
                            case "TestCase.json":
                                TestCase testCase = gson.fromJson(content, TestCase.class);
                                break;
                            case "TestStep.json":
                                switch (checkEdiOrXml(file.getCanonicalPath())) {
                                    case XML:
                                        XMLTestStep xmlTestStep = gson.fromJson(content, XMLTestStep.class);
                                        xmlTestStep.setPath(file.getPath());
                                        this.contextbasedXMLMessages.put(file.getParentFile(), xmlTestStep);
                                        break;
                                    default:
                                        addAdditionnalError(ValidationReport.ERROR, "Contextbased file " + file.getPath() + " must have XML in its path.");
                                }
                                break;
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                    } catch (JsonSyntaxException e) {
                        addAdditionnalError(ValidationReport.ERROR, "Malformed JSON file : " + file.getPath() + "\n\t" + e.getMessage());
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private String checkEdiOrXml(String absolutePath) {
        if (absolutePath.toLowerCase().contains(XML.toLowerCase())) {
            return XML;
        }
        return null;
    }

    private HashMap<String, EnhancedReport> validateContextFreeXMLMessages(Collection<File> jsonDescriptions) {
        HashMap<String, EnhancedReport> res = new HashMap<>();
        for (File json : jsonDescriptions) {
            try {
                XMLTestObject object = gson.fromJson(ErxFileUtil.getFileAsString(json), XMLTestObject.class);
                if (null != object && null != object.getXml() && object.getXml().getSchematronPathList().size() == 1) {
                    String directory = json.getParentFile().getPath() + File.separator;
                    ArrayList<String> schematronPaths = new ArrayList<>();
                    for (String name : object.getXml().getSchematronPathList()) {
                        schematronPaths.add(PATH_SCHEMATRONS + "/" + name);
                    }
                    res.put(directory + XML_MESSAGE, validateXMLMessage(directory + XML_MESSAGE, schematronPaths, "ALL", Context.Free));
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return res;
    }

    private EnhancedReport validateXMLMessage(String messagePath, ArrayList<String> schematronPaths, String phase, Context context) {
        String message = "";
        try{
            message = ErxFileUtil.getFileAsString(messagePath);
            if(message.equals("")){
                throw new IOException();
            }
        } catch (IOException e) {
            addAdditionnalError(ValidationReport.WARNING, "Empty or missing example message : " + messagePath + ".");
            return null;
        }
        ArrayList<String> schematrons = new ArrayList<>();
        for (String path : schematronPaths) {
            if (path != null) {
                try {
                    schematrons.add(ErxFileUtil.getFileAsString(path));
                } catch (IOException e) {
                    addAdditionnalError(ValidationReport.ERROR, "The schematron file : " + path + " does not exist for the message " + messagePath + ".");
                }
            }
        }
        XMLValidationProxy validationProxy = new XMLValidationProxy("service_name", "service_provider");
        EnhancedReport report = null;
        report = validationProxy.validate(message, null, schematrons, null, phase, context);
        return report;
    }

    private String getFileExtension(String filename) {
        StringTokenizer strtok = new StringTokenizer(filename, ".");
        String extension = "";
        while (strtok.hasMoreTokens()) {
            extension = strtok.nextToken();
        }
        return extension;
    }


    private void initFilesCollections(boolean parseResources) throws IOException {
        profileFiles = new HashSet<String>();
        constraintFiles = new HashSet<String>();
        valueSetFiles = new HashSet<String>();
        if (parseResources) {
            Collection<File> files = ErxFileUtil.listAllFilesFromDirectory(".", new String[]{XML_EXTENSION});
            for (File f : files) {
                if (f.isFile()) {
                    String fileName = f.getName().toLowerCase();
                    if (fileName.contains(PROFILE_TOKEN)) {
                        profileFiles.add(f.getPath().replace(resourceBundlePath,""));
                    } else if (fileName.contains(CONSTRAINTS_TOKEN)) {
                        constraintFiles.add(f.getPath().replace(resourceBundlePath, ""));
                    } else if (fileName.contains(VALUESET_TOKEN)) {
                        valueSetFiles.add(f.getPath().replace(resourceBundlePath, ""));
                    }
                }
            }
        }
    }


    private InputStream findProfile(String messageID) throws IOException {
        return ErxFileUtil.getStringAsInputStream(find(this.profiles, "Message ID=\"" + messageID + "\""));
    }

    private InputStream findConstraint(String constraintID) throws IOException {
        return ErxFileUtil.getStringAsInputStream(find(this.constraints, "UUID=\"" + constraintID + "\""));
    }

    private InputStream findValueSet(String identifier) throws IOException {
        return ErxFileUtil.getStringAsInputStream(find(this.valueSets, "ValueSetLibraryIdentifier=\"" + identifier + "\""));
    }

    private String find(List<String> list, String token) {
        for (String s : list) {
            if (s.contains(token)) {
                return s;
            }
        }
        return null;
    }

    private void addAdditionnalError(String level,String message){
        ArrayList<String> list = additionalErrors.get(level);
        if(list == null){
            list = new ArrayList<>();
            list.add(message);
        } else {
            list.add(message);
        }
        additionalErrors.put(level, list);
    }
}
