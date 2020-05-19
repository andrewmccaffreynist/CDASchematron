package gov.nist.validation.test;

import java.util.ArrayList;

/**
 * Created by mcl1 on 9/21/15.
 */
public class Reports {

    ArrayList<Report> profileValidationReports;
    ArrayList<Report> constraintsValidationReports;
    ArrayList<Report> valueSetValidationReports;

    public Reports(ArrayList<Report> profileValidationReports, ArrayList<Report> constraintsValidationReports, ArrayList<Report> valueSetValidationReports) {
        this.profileValidationReports = profileValidationReports;
        this.constraintsValidationReports = constraintsValidationReports;
        this.valueSetValidationReports = valueSetValidationReports;
    }
}
