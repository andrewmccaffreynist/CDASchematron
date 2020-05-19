package gov.nist.validation.test;

import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/**
 * Created by mcl1 on 9/28/15.
 */
public class XSDValidationErrorHandler  implements ErrorHandler {


    private Report report;
    private static final String ERROR = "ERROR";
    private static final String WARNING = "WARNING";

    public XSDValidationErrorHandler(String path) {
        this.report = new Report(path);
    }

    @Override
    public void warning(SAXParseException exception) throws SAXException {
        this.addEntry(WARNING, exception);
    }

    @Override
    public void error(SAXParseException exception) throws SAXException {
        this.addEntry(ERROR,exception);
    }

    @Override
    public void fatalError(SAXParseException exception) throws SAXException {
        //Redirect to error() as there is no difference to us between ERROR and FATAL
        this.error(exception);
    }

    private void addEntry(String classification,SAXParseException ex){
        //TODO Use XMLDetections ?
        if(ERROR.equals(classification)) {
            report.addItem(new ErrorReportItem(ex.getMessage()));
        } else if(WARNING.equals(classification)) {
            report.addItem(new WarningReportItem(ex.getMessage()));
        }
    }

    public Report getReport() {
        return report;
    }

}