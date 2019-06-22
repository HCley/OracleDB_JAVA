package db;

public class cliente{
    private int codCliente;
    private int telefone;
    private String email;
    private String nome;
    private int cpf;


    /**
     *  Table cliente {
     *    cod_cliente int [not null, pk]
     *    cpf varchar(15) [not null]
     *    nome varchar(100) [not null]
     *    email varchar(50) [not null]
     *    telefone varchar(20) [not null]
     *  }
     */


    public cliente(int codCliente, int cpf, String nome, String email, int telefone){
        this.codCliente = codCliente;
        this.telefone = telefone;
        this.email = email;
        this.nome = nome;
        this.cpf = cpf;
    }
}