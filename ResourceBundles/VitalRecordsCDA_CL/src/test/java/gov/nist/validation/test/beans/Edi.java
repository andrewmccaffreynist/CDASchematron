package gov.nist.validation.test.beans;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/**
 * Created by mcl1 on 10/8/15.
 */
public class Edi {

    @SerializedName("messageId")
    @Expose
    private String messageId;
    @SerializedName("constraintId")
    @Expose
    private String constraintId;
    @SerializedName("valueSetLibraryId")
    @Expose
    private String valueSetLibraryId;

    /**
     * @return The messageId
     */
    public String getMessageId() {
        return messageId;
    }

    /**
     * @param messageId The messageId
     */
    public void setMessageId(String messageId) {
        this.messageId = messageId;
    }

    /**
     * @return The constraintId
     */
    public String getConstraintId() {
        return constraintId;
    }

    /**
     * @param constraintId The constraintId
     */
    public void setConstraintId(String constraintId) {
        this.constraintId = constraintId;
    }

    /**
     * @return The valueSetLibraryId
     */
    public String getValueSetLibraryId() {
        return valueSetLibraryId;
    }

    /**
     * @param valueSetLibraryId The valueSetLibraryId
     */
    public void setValueSetLibraryId(String valueSetLibraryId) {
        this.valueSetLibraryId = valueSetLibraryId;
    }

}
