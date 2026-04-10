import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;

public class StudentMarks {
    public static void main(String[] args) {
        try {

            BufferedReader br = new BufferedReader(new FileReader("Student.txt"));
            ArrayList<String> list = new ArrayList<>();

            String line;

            while ((line = br.readLine()) != null) {
                list.add(line);
            }

            for (String s : list) {

                String[] data = s.split(" ");

                String name = data[0];
                int m1 = Integer.parseInt(data[1]);
                int m2 = Integer.parseInt(data[2]);
                int m3 = Integer.parseInt(data[3]);

                int total = m1 + m2 + m3;

                System.out.println("Name: " + name + " Total Marks: " + total);
            }

            br.close();
        } 
        catch (Exception e) {
            System.out.println(e);
        }
    }
}