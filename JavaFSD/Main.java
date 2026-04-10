import java.util.*;
import java.util.stream.*;

public class Main {
    public static void main(String[] args) {

        // Step 1: Create list of student marks
        List<Integer> marks = Arrays.asList(35, 42, 67, 78, 90, 55, 38, 81);

        System.out.println("Final Marks after Grace:");

        List<Integer> finalMarks = marks.stream()
                .filter(m -> m >= 40)   // passed students
                .map(m -> m + 5)        // add grace marks
                .collect(Collectors.toList());

        finalMarks.forEach(m -> System.out.println(m));

        long distinctionCount = finalMarks.stream()
                .filter(m -> m > 75)
                .count();

        System.out.println("Number of students with distinction: " + distinctionCount);
    }}