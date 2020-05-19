package gov.nist.validation.test.beans;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/**
 * Created by mcl1 on 11/19/15.
 */
public class TestStory {

    @SerializedName("teststorydesc")
    @Expose
    private String teststorydesc;
    @SerializedName("comments")
    @Expose
    private String comments;
    @SerializedName("preCondition")
    @Expose
    private String preCondition;
    @SerializedName("postCondition")
    @Expose
    private String postCondition;
    @SerializedName("testObjectives")
    @Expose
    private String testObjectives;
    @SerializedName("evaluationCriteria")
    @Expose
    private String evaluationCriteria;
    @SerializedName("notes")
    @Expose
    private String notes;
    @SerializedName("position")
    @Expose
    private Integer position;

    /**
     *
     * @return
     * The teststorydesc
     */
    public String getTeststorydesc() {
        return teststorydesc;
    }

    /**
     *
     * @param teststorydesc
     * The teststorydesc
     */
    public void setTeststorydesc(String teststorydesc) {
        this.teststorydesc = teststorydesc;
    }

    /**
     *
     * @return
     * The comments
     */
    public String getComments() {
        return comments;
    }

    /**
     *
     * @param comments
     * The comments
     */
    public void setComments(String comments) {
        this.comments = comments;
    }

    /**
     *
     * @return
     * The preCondition
     */
    public String getPreCondition() {
        return preCondition;
    }

    /**
     *
     * @param preCondition
     * The preCondition
     */
    public void setPreCondition(String preCondition) {
        this.preCondition = preCondition;
    }

    /**
     *
     * @return
     * The postCondition
     */
    public String getPostCondition() {
        return postCondition;
    }

    /**
     *
     * @param postCondition
     * The postCondition
     */
    public void setPostCondition(String postCondition) {
        this.postCondition = postCondition;
    }

    /**
     *
     * @return
     * The testObjectives
     */
    public String getTestObjectives() {
        return testObjectives;
    }

    /**
     *
     * @param testObjectives
     * The testObjectives
     */
    public void setTestObjectives(String testObjectives) {
        this.testObjectives = testObjectives;
    }

    /**
     *
     * @return
     * The evaluationCriteria
     */
    public String getEvaluationCriteria() {
        return evaluationCriteria;
    }

    /**
     *
     * @param evaluationCriteria
     * The evaluationCriteria
     */
    public void setEvaluationCriteria(String evaluationCriteria) {
        this.evaluationCriteria = evaluationCriteria;
    }

    /**
     *
     * @return
     * The notes
     */
    public String getNotes() {
        return notes;
    }

    /**
     *
     * @param notes
     * The notes
     */
    public void setNotes(String notes) {
        this.notes = notes;
    }

    /**
     *
     * @return
     * The position
     */
    public Integer getPosition() {
        return position;
    }

    /**
     *
     * @param position
     * The position
     */
    public void setPosition(Integer position) {
        this.position = position;
    }

}