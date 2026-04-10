import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class CopyFileContent {
    public static void main(String[] args) {
        try {
            FileReader fr = new FileReader("data.txt");
            FileWriter fw = new FileWriter("destination.txt");

            int ch;

            while ((ch = fr.read()) != -1) {
                fw.write(ch);
            }

            fr.close();
            fw.close();

            System.out.println("File copied successfully.");
        } 
        catch (IOException e) {
            System.out.println(e);
        }
    }
}