package db;

import java.sql.Date;

public class Animal extends Table{
    private String nome;
    private int codAnimal;
    private int codCliente;
    private String especie;
    private String raca;
    private Date idade;

    /**
     *  Table animal {
     *    nome varchar(100) [not null]
     *    cod_animal int [not null, pk]
     *    cod_cliente int [not null]
     *    especie varchar(50)
     *    raca varchar(50) [not null]
     *  }
     * 
     * Ref FK_cli_cod: cliente.cod_cliente < animal.cod_cliente
     */


    public Animal(String nome, int codAnimal, int codCliente, String especie, String raca, Date idade){
        super();
        this.codCliente = codCliente;
        this.codAnimal = codAnimal;
        this.especie = especie;
        this.nome = nome;
        this.raca = raca;
        this.idade = idade;
    }

    @Override
    public String toString(){
        String line = "\t\t{" +
                             Table.space + "nome\": " + "\"" + nome + "\"," +
                             Table.space + "cod_animal\": " + codAnimal + "," +
                             Table.space + "cod_cliente\": " + codCliente + "," +
                             Table.space + "especie\": " + "\"" + especie + "\"," + 
                             Table.space + "raca\": " + "\"" + raca + "\"," + 
                             Table.space + "idade\": " + "\"" + idade + "\"" + 
                             "\n\t\t}";
        return line;
    }
}