package db;

public class Cliente extends Table{
    private int codCliente;
    private String cpf;
    private String nome;
    private String email;
    private String telefone;

    /**
     *  Table cliente {
     *    cod_cliente int [not null, pk]
     *    cpf varchar(15) [not null]
     *    nome varchar(100) [not null]
     *    email varchar(50) [not null]
     *    telefone varchar(20) [not null]
     *  }
     */


    public Cliente(int codCliente, String cpf, String nome, String email, String telefone){
        super();
        this.codCliente = codCliente;
        this.telefone = telefone;
        this.email = email;
        this.nome = nome;
        this.cpf = cpf;
    }

    @Override
    public String toString(){
        String line = "\t\t{" +
                             Table.space + "cod_cliente\": " + codCliente + "," +
                             Table.space + "cpf\": " + "\"" + telefone + "\"," +
                             Table.space + "nome\": " + "\"" + email + "\"," +
                             Table.space + "email\": " + "\"" + nome + "\"," + 
                             Table.space + "telefone\": " + "\"" + cpf + "\"" + 
                             "\n\t\t}";
        return line;
    }
}