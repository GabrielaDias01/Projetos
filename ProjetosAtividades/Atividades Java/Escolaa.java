/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Escola;

/**
 *
 * @author gabriela.adias11
 */
public class Escola {
 
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
      Aluno feio = new Aluno ("Juninho do grau", 17, "202527");
      Professor hard = new Professor ("Robertão das paçoca", 57, "Paisagismo");
      Pessoa people = new Pessoa ("Raimunda a imunda , 35");
      
      feio.exibirInformacoes();
      hard.exibirInformacoes();
      people.exibirInformacoes();
    }
}

    

