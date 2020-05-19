package gov.nist.validation.test;

import org.apache.commons.io.FileUtils;
import org.junit.Assert;
import org.junit.Test;

import java.io.File;
import java.io.IOException;

/**
 * Created by mcl1 on 8/20/15.
 */
public class ResourceBundleTest {

    @Test
    public void resourceBundleTest() {
        ResourceBundleValidator rbv = new ResourceBundleValidator();
        ValidationReport report = null;
        try {
            report = rbv.validate();
        } catch (IOException e) {
            System.out.println("FATAL Input/Output Error while accessing file "+ErxFileUtil.getLastFile());
            e.printStackTrace();
        }
        System.out.println(report.toString());
        File f = new File("Report.txt");
        try {
            FileUtils.writeStringToFile(f,report.toString());
            System.out.println("You can also find the report here : "+f.getAbsolutePath());
        } catch (IOException e) {
            e.printStackTrace();
        }
        Assert.assertEquals("Errors occured during the validation. Check the ResourceBundle Validation Report for more information.", 0, report.getErrorsCount());
    }

}
