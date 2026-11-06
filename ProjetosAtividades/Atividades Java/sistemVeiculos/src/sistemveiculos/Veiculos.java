/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sistemveiculos;

/**
 *
 * @author gabriela.adias11
 */
public class Veiculos 
{
   
    private String marca;
    private String modelo;
    private int ano;
    private float valorDiaria;
    
    
        public Veiculos(String marca, String modelo,int ano, float valorDiaria){
        setMarca(marca);
        setModelo(modelo);
        setAno(ano);
        setValorDiaria(valorDiaria);
        }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        if(ano >= 1900){
        this.ano = ano;}
        else{
        System.out.println("Ano Inválido");}
    }

    public float getValorDiaria() {
        return valorDiaria;
    }

    public void setValorDiaria(float valorDiaria) {
        if (valorDiaria > 0) {
           this.valorDiaria = valorDiaria;
        } 
        else {
            System.out.println("Valor Inválido");
        }
    }
    public float calcularAluguel(int dias){
    float calculoRealizado = valorDiaria * dias;
    return calculoRealizado;
    }
    
    public void exibirInformacoes(){
        System.out.println("Marca:" + marca + "\nModelo:" + modelo + "\nAno:" + ano + "\nValor Diária" + valorDiaria);}
}
    

    


     



