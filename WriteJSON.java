import java.io.FileWriter;
import java.io.IOException;



public class WriteJSON{

    @SuppressWarnings("unchecked")
    private WriteJSON(){}

    public static void Write(){

        try (FileWriter file = new FileWriter("employees.json")) {
 
            file.flush();
 
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}