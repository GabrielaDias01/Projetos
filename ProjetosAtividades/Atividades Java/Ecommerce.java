/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package ecommerce;

/**
 *
 * @author gabriela.adias11
 */
public class Ecommerce {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
     Entregador m01 = new Motoboy("Evanildo", 75.0);
     Entregador c01 = new Caminhoneiro("Maria", 700.0);
     
     m01.calcularTaxas();
     m01.processarPagamento(m01.getValorEntrega());
     m01.mostrarDados();
     c01.calcularTaxas();
     c01.processarPagamento(c01.getValorEntrega());
     c01.mostrarDados();
     
    }
    
}