package db;

public class Animal extends Table{
    private String nome;
    private int codAnimal;
    private int codCliente;
    private String especie;
    private String raca;

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


    public Animal(String nome, int codAnimal, int codCliente, String especie, String raca){
        super();
        this.codCliente = codCliente;
        this.codAnimal = codAnimal;
        this.especie = especie;
        this.nome = nome;
        this.raca = raca;
    }

    @Override
    public String toString(){
        String line = "[" +  nome       + " " +
                             codAnimal  + " " +
                             codCliente + " " +
                             especie    + " " +
                             raca       + "]";
        return line;
    }
}