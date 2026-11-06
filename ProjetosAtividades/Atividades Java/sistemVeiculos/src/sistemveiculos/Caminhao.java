/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sistemveiculos;

/**
 *
 * @author gabriela.adias11
 */
public class Caminhao extends Veiculos{
    float cpcToneladas;
    
    
    public Caminhao(String marca, String modelo,int ano, float valorDiaria, float cpcToneladas){
    super(marca, modelo,ano, valorDiaria);
    setCpcToneladas(cpcToneladas);
    }
    
     @Override
    public void exibirInformacoes(){
        System.out.println("Marca:" + getMarca());
        System.out.println("Modelo:" + getModelo());
        System.out.println("Ano:" + getAno());
        System.out.println("Valor da Diária:" + getValorDiaria());
        System.out.println("Capacidade em Toneladas:" + cpcToneladas);
        
    
    
}

    public float getCpcToneladas() {
        return cpcToneladas;
    }

    public void setCpcToneladas(float cpcToneladas) {
        this.cpcToneladas = cpcToneladas;
    }
    
   

}
