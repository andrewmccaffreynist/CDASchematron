package gov.nist.validation.test;

/**
 * Created by mcl1 on 9/28/15.
 */
public class WarningReportItem extends ReportItem {

    String message;

    public WarningReportItem(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return message;
    }

    @Override
    public String getClassification() {
        return super.CLASSIFICATION_WARNING;
    }


}
