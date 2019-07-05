package db;

import java.sql.Date;

public class Atendimento extends Table{
    private int codAtendimento;
    private int CRMV;
    private int codAnimal;
    private Date date;
    private String diagnostico;

    /**
     *  Table atendimento {
     *    cod_atendimento int [not null, pk]
     *    crmv int [not null]
     *    cod_animal int [not null]
     *    data_atendimento date [not null]
     *    Diagnostico varchar(1000)
     *  }
     * 
     *   Ref FK_cod_crm: atendimento.crmv > veterinario.crmv
     *   Ref FK_cod_animal: atendimento.cod_animal > animal.cod_animal
     *
     */


    public Atendimento(int codAtendimento, int CRMV, int codAnimal, String diagnostico, Date date){
        super();
        this.codAtendimento = codAtendimento;
        this.CRMV = CRMV;
        this.codAnimal = codAnimal;
        this.diagnostico = diagnostico;
        this.date = date;
    }

    @Override
    public String toString(){
        String line = "\t\t{" +  
                             Table.space + "cod_atendimento\": " + codAtendimento + "," +
                             Table.space + "crmv\": " + CRMV + "," +
                             Table.space + "cod_animal\": " + codAnimal + "," +
                             Table.space + "Diagnostico\": " + "\"" + diagnostico + "\"," + 
                             Table.space + "data_atendimento\": " + "\"" + date + "\"" +
                             "\n\t\t}";
        return line;
    }
}