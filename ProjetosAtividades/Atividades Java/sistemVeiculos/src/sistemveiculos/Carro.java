/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sistemveiculos;

/**
 *
 * @author gabriela.adias11
 */
public class Carro extends Veiculos {
    int qntPortas;
    
public Carro(String marca, String modelo,int ano, float valorDiaria, int qntPortas){
super(marca, modelo,ano, valorDiaria);
setQntPortas(qntPortas);
}

@Override
public void exibirInformacoes(){
        System.out.println("Marca:" + getMarca());
        System.out.println("Modelo:" + getModelo());
        System.out.println("Ano:" + getAno());
        System.out.println("Valor da Diária:" + getValorDiaria());
        System.out.println("Quantidade de Portas:" + qntPortas);
        
    
    
}

    public int getQntPortas() {
        return qntPortas;
    }

    public void setQntPortas(int qntPortas) {
        this.qntPortas = qntPortas;
    }

}
