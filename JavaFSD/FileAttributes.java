import java.io.File;

public class FileAttributes {
    public static void main(String[] args) {

        File file = new File("data.txt");

        System.out.println("File Name: " + file.getName());
        System.out.println("File Path: " + file.getAbsolutePath());
        System.out.println("File Exists: " + file.exists());
        System.out.println("Readable: " + file.canRead());
        System.out.println("Writable: " + file.canWrite());
        System.out.println("File Size: " + file.length() + " bytes");
    }
}