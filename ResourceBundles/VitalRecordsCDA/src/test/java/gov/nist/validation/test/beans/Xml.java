package gov.nist.validation.test.beans;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by mcl1 on 10/2/15.
 */
public class Xml {

    @SerializedName("schemaPathLsit")
    @Expose
    private List<String> schemaPathLsit = new ArrayList<String>();
    @SerializedName("schematronPathList")
    @Expose
    private List<String> schematronPathList = new ArrayList<String>();

    /**
     * @return The schemaPathLsit
     */
    public List<String> getSchemaPathLsit() {
        return schemaPathLsit;
    }

    /**
     * @param schemaPathLsit The schemaPathLsit
     */
    public void setSchemaPathLsit(List<String> schemaPathLsit) {
        this.schemaPathLsit = schemaPathLsit;
    }

    /**
     * @return The schematronPathList
     */
    public List<String> getSchematronPathList() {
        return schematronPathList;
    }

    /**
     * @param schematronPathList The schematronPathList
     */
    public void setSchematronPathList(List<String> schematronPathList) {
        this.schematronPathList = schematronPathList;
    }

}
