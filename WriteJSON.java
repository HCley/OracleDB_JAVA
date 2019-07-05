import java.io.IOException; 
import java.io.PrintWriter; 
import java.nio.charset.Charset; 
import java.nio.file.Files; 
import java.nio.file.Path; 
import java.nio.file.Paths;
import java.util.LinkedList;
import java.io.FileNotFoundException;

import db.*;

public class WriteJSON{
    
    public static void toFile(String fileName, LinkedList<Table> list)throws FileNotFoundException {
        String currDir = Paths.get("").toAbsolutePath().toString(); 
        String dirName = currDir +"\\JSON\\" + fileName + ".JSON";
        Path path = Paths.get(dirName); 
		

        try (PrintWriter file = new PrintWriter(Files.newBufferedWriter(path, Charset.forName("UTF-8")))){ 

            file.print("{");
            file.print("\n\t\""+ fileName +"\": [\n");

		for(int i = 0; i < list.size(); i++){
			file.print(list.get(i));
            if(i != list.size() - 1)
                file.print(",\n");
		}
		
		file.print("\n\t]");
        file.print("\n}");
        file.close();
        
        }catch (IOException x){
            System.err.format("Erro de E/S: %s%n", x);
        }
    }
}