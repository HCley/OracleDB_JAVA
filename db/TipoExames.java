package db;

public class TipoExames extends Table{
    private int codExames;
    private String tipo;
    private String descricao;
    private double precoTabelado;

    /**
     *  Table tipo_exames {
     *    cod_exames int [not null, pk]
     *    tipo varchar(100) [not null]
     *    descricao varchar(50) [not null]
     *    preco_tabelado decimal(15,2) [not null]
     *  }
     */


    public TipoExames(int codExames, String tipo, String descricao, double precoTabelado){
        super();
        this.codExames = codExames;
        this.tipo = tipo;
        this.descricao = descricao;
        this.precoTabelado = precoTabelado;
    }

    @Override
    public String toString(){
        String line = "\t\t{" +
                             Table.space + "cod_exames\": " + codExames + "," +
                             Table.space + "tipo\": " + "\"" + tipo + "\"," +
                             Table.space + "descricao\": " + "\"" + descricao + "\"," +
                             Table.space + "preco_tabelado\": " + precoTabelado +
                             "\n\t\t}";
        return line;
    }
}