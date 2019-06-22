import java.util.LinkedList;
import java.util.List;
import db.cliente;

import java.sql.*;


public class app {
    private static Connection connection;
    private static LinkedList clientes;
    private static LinkedList animais;
    private static LinkedList veterinarios;
    private static LinkedList atendimentos;
    private static LinkedList exames;
    private static LinkedList tiposExames;

    public static void main(String arg[]) throws SQLException, ClassNotFoundException {

        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");  
            System.out.println("Conectando ao banco");
                
            connection = DriverManager.getConnection(
            //"jdbc:oracle:thin:@//camburi.pucrs.br:1521:facin11g",
            "jdbc:oracle:thin:@//localhost:1522/facin11g",
            "BI203082", "442498aa*");  
            System.out.println("Conectado ao banco.");
            

            getTable("*", "cliente");

            connection.close();
        }catch(Exception e){ System.out.println(e); }  
    }

    public static List createTable(List list){
        if(list == null){
            list = new LinkedList();
        }
        return list;
    }

    public static void getTable(String select, String table) throws SQLException {

        Statement stmt = connection.createStatement();  
        ResultSet rs=stmt.executeQuery("SELECT " + select + " FROM " + table);  
        
        switch(table){
            case "cliente": 
                            int codCliente = 0;
                            String nome = "";
                            String email  = "";
                            int telefone = 0;
                            int cpf = 0;

                            createTable(clientes);
                            while(rs.next()){
                                codCliente = rs.getInt(1);
                                nome = rs.getString(2);
                                email = rs.getString(3);
                                telefone = rs.getInt(4);
                                cpf = rs.getInt(5);

                                clientes.add(new cliente(codCliente, cpf, nome, email, telefone));
                            }
                            break;
                            
            case "animal": break;
            case "veterinario": break;
            case "arendimento": break;
            case "exame": break;
            case "tipo_exame": break;
        }
    }
}