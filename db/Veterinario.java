package db;

public class Veterinario extends Table{
    private int CRMV;
    private String nome;
    private String email;
    private String plantonista;

    /** 
     *  Table veterinario {
     *    crmv int [not null, pk]
     *    nome varchar(100) [not null]
     *    email varchar(50) [not null]
     *    plantonista plantonista_enum
     *  }
     *
     *  Enum plantonista_enum {
     *    S 
     *    N
     *  }
     */


    public Veterinario(int CRMV, String nome, String email, String plantonista){
        super();
        this.CRMV = CRMV;
        this.nome = nome;
        this.email = email;
        this.plantonista = plantonista;
    }

    @Override
    public String toString(){
        String line = "[" +  CRMV         + " " +
                             nome         + " " +
                             email        + " " +
                             plantonista  + "]";
        return line;
    }
}