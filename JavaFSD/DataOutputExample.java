import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class DataOutputExample {
    public static void main(String[] args) {
        try {
            FileOutputStream fos = new FileOutputStream("byteData.txt");
            DataOutputStream dos = new DataOutputStream(fos);

            dos.writeInt(100);
            dos.writeDouble(55.75);
            dos.writeUTF("Java File Handling By Sheikh Wasimuddin");

            System.out.println("Data written successfully.");

            dos.close();
            fos.close();
        } 
        catch (IOException e) {
            System.out.println(e);
        }
    }
}