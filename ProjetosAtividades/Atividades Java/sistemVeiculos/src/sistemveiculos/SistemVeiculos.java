/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package sistemveiculos;

/**
 *
 * @author gabriela.adias11
 */
public class SistemVeiculos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {


      Carro c01 = new Carro("Toyota", "Corolla", 1920, (float)103.00, 4);
      Moto m01 = new Moto ("Honda", "CG 160 Fan",2016, (float) 79.90, 160);
      Caminhao cam01 = new Caminhao ("Volvo", "FH 540",1940, (float)700.00,(float)4.90);
      Veiculos [] veiculoo = {c01, m01,cam01}; 
      
      veiculoo[0].exibirInformacoes();
        System.out.println("Valor do Aluguel:" + veiculoo[0].calcularAluguel(5));
      veiculoo[1].exibirInformacoes();
        System.out.println("Valor do Aluguel:" + veiculoo[1].calcularAluguel(5));
      veiculoo[2].exibirInformacoes();
        System.out.println("Valor do Aluguel:" + veiculoo[2].calcularAluguel(5));
        
        

      
      
      
            
    }
    
}
