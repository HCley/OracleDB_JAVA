package db;

public class Exame extends Table{
    private int exameID;
    private int codExames;
    private int codAtendimento;
    private double precoPraticado;

    /**
     *  Table animal {
     *    nome varchar(100) [not null]
     *    cod_animal int [not null, pk]
     *    cod_cliente int [not null]
     *    especie varchar(50)
     *    raca varchar(50) [not null]
     *  }
     */


    public Exame(int exameID, int codExames, int codAtendimento, double precoPraticado){
        super();
        this.exameID = exameID;
        this.codExames = codExames;
        this.codAtendimento = codAtendimento;
        this.precoPraticado = precoPraticado;
    }

    @Override
    public String toString(){
        String line = "\t\t{" +
                             Table.space + "exame_id\": " + exameID + "," +
                             Table.space + "cod_exames\": " + codExames + "," +
                             Table.space + "cod_atendimento\": " + codAtendimento + "," +
                             Table.space + "preco_praticado\": " + precoPraticado + 
                             "\n\t\t}";
        return line;
    }
}