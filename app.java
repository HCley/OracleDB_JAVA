import java.util.LinkedList;
import java.sql.*;

import db.*;


public class app {
    private static final String user = "BI200285";
    private static final String password = "BI200285";

    private static Connection connection;
    private static LinkedList<Table> clientes,
                                     animais,
                                     veterinarios,
                                     atendimentos,
                                     tiposexames,
                                     exames;
    /*
    private static LinkedList<Cliente> clientes;
    private static LinkedList<Animal> animais;
    private static LinkedList<Veterinario> veterinarios;
    private static LinkedList<Atendimento> atendimentos;
    private static LinkedList<TipoExames> tiposexames;
    private static LinkedList<Exame> exames;
    */
    
    public static void main(String arg[]) throws SQLException, ClassNotFoundException {

        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");  
            System.out.println("Conectando ao banco");
                
            connection = DriverManager.getConnection(
            "jdbc:oracle:thin:@//camburi.pucrs.br:1521/facin11g",
            //"jdbc:oracle:thin:@//localhost:1522/facin11g",
            user, password);
            System.out.println("Conectado ao banco.");
            
            /*
            clientes = new LinkedList<Cliente>();
            animais = new LinkedList<Animal>();
            atendimentos = new LinkedList<Atendimento>();
            veterinarios = new LinkedList<Veterinario>();
            exames = new LinkedList<Exame>();
            tiposexames = new LinkedList<TipoExames>();
            */
            clientes = new LinkedList<Table>();
            animais = new LinkedList<Table>();
            atendimentos = new LinkedList<Table>();
            veterinarios = new LinkedList<Table>();
            exames = new LinkedList<Table>();
            tiposexames = new LinkedList<Table>();

            getTable("*", "cliente");
            getTable("*", "animal");
            getTable("*", "atendimento");
            getTable("*", "veterinario");
            getTable("*", "exame");
            getTable("*", "tipo_exames");
            connection.close();


            WriteJSON.toFile("animal", animais);
            WriteJSON.toFile("cliente", clientes);
            WriteJSON.toFile("atendimento", atendimentos);
            WriteJSON.toFile("veterinario", veterinarios);
            WriteJSON.toFile("exame", exames);
            WriteJSON.toFile("tipo_exames", tiposexames);

        }catch(Exception e){ System.out.println(e); }  
    }


    public static void getTable(String select, String table) throws SQLException {
        Statement stmt = connection.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT " + select + " FROM " + table); 

        switch(table){
            case "cliente":
                            int Cliente_codCliente = 0;
                            String Cliente_nome = "";
                            String Cliente_email  = "";
                            String Cliente_telefone = "";
                            String Cliente_cpf = "";

                            while(rs.next()){
                                Cliente_codCliente = rs.getInt(1);
                                Cliente_nome = rs.getString(2);
                                Cliente_email = rs.getString(3);
                                Cliente_telefone = rs.getString(4);
                                Cliente_cpf = rs.getString(5);

                                clientes.add(new Cliente(Cliente_codCliente,
                                                         Cliente_cpf,
                                                         Cliente_nome,
                                                         Cliente_email,
                                                         Cliente_telefone));
                            }
                            break;
                            
            case "animal":
                            int Animal_codCliente = 0;
                            int Animal_codAnimal = 0;
                            String Animal_nome = "";
                            String Animal_especie  = "";
                            String Animal_raca = "";
                            Date Animal_idade;

                            while(rs.next()){
                                Animal_nome = rs.getString(1);
                                Animal_codAnimal = rs.getInt(2);
                                Animal_codCliente = rs.getInt(3);
                                Animal_especie = rs.getString(4);
                                Animal_raca = rs.getString(5);
                                Animal_idade = rs.getDate(6);

                                animais.add(new Animal(Animal_nome,
                                                         Animal_codAnimal,
                                                         Animal_codCliente,
                                                         Animal_especie,
                                                         Animal_raca,
                                                         Animal_idade));
                            }
                            break;
                            
            case "veterinario":
                                int Veterinario_CRMV = 0;
                                String Veterinario_nome = "";
                                String Veterinario_email  = "";
                                String Veterinario_plantonista = "";

                                while(rs.next()){
                                    Veterinario_CRMV = rs.getInt(1);
                                    Veterinario_nome = rs.getString(2);
                                    Veterinario_email = rs.getString(3);
                                    Veterinario_plantonista = rs.getString(4);

                                    veterinarios.add(new Veterinario(Veterinario_CRMV,
                                                                     Veterinario_nome,
                                                                     Veterinario_email,
                                                                     Veterinario_plantonista));
                                }
                                break;

            case "atendimento":
                                int Atendimento_codAtendimento = 0;
                                int Atendimento_CRMV = 0;
                                int Atendimento_codAnimal = 0;
                                Date Atendimento_dataAtendimento;
                                String Atendimento_diagnostico = "";

                                while(rs.next()){
                                    Atendimento_codAtendimento = rs.getInt(1);
                                    Atendimento_CRMV = rs.getInt(2);
                                    Atendimento_codAnimal = rs.getInt(3);
                                    Atendimento_diagnostico = rs.getString(4);
                                    Atendimento_dataAtendimento = rs.getDate(5);

                                    atendimentos.add(new Atendimento(Atendimento_codAtendimento,
                                                                     Atendimento_CRMV,
                                                                     Atendimento_codAnimal,
                                                                     Atendimento_diagnostico,
                                                                     Atendimento_dataAtendimento));
                                }
                                break;
                                
            case "exame":
                            int Exame_exameID = 0;
                            int Exame_codExames = 0;
                            int Exame_codAtendimento = 0;
                            double Exame_PrecoPraticado  = 0.0;

                            while(rs.next()){
                                Exame_exameID = rs.getInt(1);
                                Exame_codExames = rs.getInt(2);
                                Exame_codAtendimento = rs.getInt(3);
                                Exame_PrecoPraticado = rs.getDouble(4);

                                exames.add(new Exame(Exame_exameID,
                                                     Exame_codExames,
                                                     Exame_codAtendimento,
                                                     Exame_PrecoPraticado));
                            }
                            break;

            case "tipo_exames":
                                int TipoExames_exameID = 0;
                                String TipoExames_tipo = "";
                                String TipoExames_descricao = "";
                                double TipoExames_PrecoTabelado  = 0.0;

                                while(rs.next()){
                                    TipoExames_exameID = rs.getInt(1);
                                    TipoExames_tipo = rs.getString(2);
                                    TipoExames_descricao = rs.getString(3);
                                    TipoExames_PrecoTabelado = rs.getDouble(4);

                                    tiposexames.add(new TipoExames(TipoExames_exameID,
                                                                   TipoExames_tipo,
                                                                   TipoExames_descricao,
                                                                   TipoExames_PrecoTabelado));
                                }
                                break;
        }
    }
}