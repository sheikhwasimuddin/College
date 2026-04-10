import java.io.FileWriter;
import java.io.IOException;
public class AppendTextFile {
    public static void main(String[] args) {
        try {
            FileWriter fw = new FileWriter("data.txt", true);

            fw.write("\nThis text is appended to the file By Sheikh Wasimuddin.");
            fw.write("\nJava File Handling Practical Example.");

            fw.close();

            System.out.println("Text appended successfully.");
        } 
        catch (IOException e) {
            System.out.println("Error occurred: " + e);
        }
    }
}