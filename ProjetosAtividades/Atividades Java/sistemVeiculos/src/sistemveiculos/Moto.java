/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sistemveiculos;

/**
 *
 * @author gabriela.adias11
 */
public class Moto extends Veiculos {
    int cilindrada;
    
    public Moto(String marca, String modelo,int ano, float valorDiaria, int cilindradas){
    super(marca,modelo, ano, valorDiaria);
    setCilindrada(cilindradas);
    }

  @Override
    public void exibirInformacoes(){
        System.out.println("Marca:" + getMarca());
        System.out.println("Modelo:" + getModelo());
        System.out.println("Ano:" + getAno());
        System.out.println("Valor da Diária:" + getValorDiaria());
        System.out.println("Cilindradas:" + cilindrada);
       
        
}

    public int getCilindrada() {
        return cilindrada;
    }

    public void setCilindrada(int cilindrada) {
        this.cilindrada = cilindrada;
    }
    
    
}
