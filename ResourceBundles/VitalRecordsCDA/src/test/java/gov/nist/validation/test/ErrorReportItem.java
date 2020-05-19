package gov.nist.validation.test;

/**
 * Created by mcl1 on 8/20/15.
 */
public class ErrorReportItem extends ReportItem{
    private String errorMessage;

    public ErrorReportItem(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    @Override
    public String toString() {
        return errorMessage;
    }

    @Override
    public String getClassification() {
        return super.CLASSIFICATION_ERROR;
    }
}
