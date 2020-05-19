package gov.nist.validation.test.beans;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/**
 * Created by mcl1 on 10/8/15.
 */
public class EDITestObject {

    @SerializedName("name")
    @Expose
    private String name;
    @SerializedName("description")
    @Expose
    private String description;
    @SerializedName("position")
    @Expose
    private Integer position;
    @SerializedName("edi")
    @Expose
    private Edi edi;

    /**
     * @return The name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name The name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return The description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description The description
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return The position
     */
    public Integer getPosition() {
        return position;
    }

    /**
     * @param position The position
     */
    public void setPosition(Integer position) {
        this.position = position;
    }

    /**
     * @return The edi
     */
    public Edi getEdi() {
        return edi;
    }

    /**
     * @param edi The edi
     */
    public void setEdi(Edi edi) {
        this.edi = edi;
    }
}
