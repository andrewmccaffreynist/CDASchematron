package gov.nist.validation.test;

import hl7.v2.validation.vs.CodeUsage;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.filefilter.DirectoryFileFilter;
import org.apache.commons.io.filefilter.RegexFileFilter;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;

/**
 * Created by mcl1 on 11/24/15.
 */
public class ErxFileUtil {

    private static String lastFile="";
    private static boolean isWindows = System.getProperty("os.name").toLowerCase().indexOf("win") >= 0;
    private static String resourceBundlePath = ClassLoader.getSystemClassLoader().getResource(".").getPath();

    public static String getFileAsString(String path) throws IOException {
        return getFileAsString(readFile(path));
    }

    public static String getInputStreamAsString(InputStream is) throws IOException {
        return IOUtils.toString(is);
    }

    public static String getFileAsString(File f) throws IOException {
        return FileUtils.readFileToString(f);
    }

    public static File getFile(String path) throws IOException {
        return readFile(path);
    }

    public static InputStream getFileAsInputStream(String path) throws IOException {
        return FileUtils.openInputStream(readFile(path));
    }

    private static File readFile(String path) throws IOException {
        if(isWindows) {
            path = path.replace('\\', '/');
            path = path.replace(resourceBundlePath.substring(1),"");
        } else {
            path = path.replace(resourceBundlePath,"");
        }

        System.out.println("Access the file : "+path);
        lastFile=path;
        if(!path.equals("")&&null!=path){
            try {
                return FileUtils.getFile(ErxFileUtil.class.getClassLoader().getResource(path).getFile());
            } catch (NullPointerException e){
                throw new IOException("No file to read",e);
            }
        } else {
            throw new IOException("No file to read");
        }
    }

    public static Collection<File> listAllFilesFromDirectory(String dir) throws IOException {
        return FileUtils.listFiles(
                getFile(dir),
                new RegexFileFilter("^(.*?)"),
                DirectoryFileFilter.DIRECTORY
        );
    }

    public static Collection<File> listAllFilesFromDirectory(String dir, String[] extensions, String testContain) throws IOException {
        ArrayList<File> res = new ArrayList<File>();
        try {
            Collection<File> tmp = listAllFilesFromDirectory(dir, extensions);
            for (File f : tmp) {
                if (f.getName().toLowerCase().contains(testContain.toLowerCase())) {
                    res.add(f);
                }
            }
        } catch (NullPointerException e) {
            //Do nothing, that means that the directory is empty
        }
        return res;
    }

    public static Collection<File> listAllFilesFromDirectory(String dir, String[] extensions) throws IOException {
        return FileUtils.listFiles(
                getFile(dir),
                extensions,
                true
        );
    }


    public static String getLastFile(){
        return lastFile;
    }

    public static InputStream getStringAsInputStream(String s) {
        if(s!=null && !"".equals(s)) {
            return IOUtils.toInputStream(s);
        } else {
            return null;
        }
    }

    public static String getExtension(String fileName) {
        return FilenameUtils.getExtension(fileName);
    }
}
