package gov.nist.validation.test;

/**
 * Created by mcl1 on 11/20/15.
 */
public class BeautifyStringBuilder {
    StringBuilder sb;
    String resourceBundlePath;
    public BeautifyStringBuilder(String resourceBundlePath) {
        this.resourceBundlePath = resourceBundlePath;
        this.sb = new StringBuilder();
    }

    public void append(String s){
        /*if(s.startsWith(resourceBundlePath)){
            s = s.substring(0,resourceBundlePath.length());
        } else if (s.contains(resourceBundlePath)){
            s = s.replace(resourceBundlePath, "");
        }*/
        s = s.replace(resourceBundlePath,"");
        sb.append(s);
    }

    public void append(int i){
        sb.append(i);
    }

    public String toString(){
        return sb.toString();
    }

}
