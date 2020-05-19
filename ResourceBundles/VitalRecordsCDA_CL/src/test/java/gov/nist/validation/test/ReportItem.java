package gov.nist.validation.test;

/**
 * Created by mcl1 on 8/21/15.
 */
public abstract class ReportItem {

    public static final String CLASSIFICATION_WARNING = "WARNING";
    public static final String CLASSIFICATION_ERROR = "ERROR";

    public ReportItem() {
    }

    public abstract String toString();
    public abstract String getClassification();

}
