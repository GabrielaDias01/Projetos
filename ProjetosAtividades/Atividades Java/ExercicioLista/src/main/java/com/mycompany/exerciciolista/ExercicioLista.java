/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package com.mycompany.exerciciolista;

import java.util.Scanner;
import javax.swing.JOptionPane;

public class ExercicioLista {

    public static void main(String[] args) {

        //Criando um objeto
        Scanner sc = new Scanner(System.in);

        //Vetor
        int[] numeros = new int[10];

        //Condição para rodar o vetor todo
        for (int i = 0; i < 10; i++) {
            System.out.println("Digite um número:");
            //Variavel que guarda os valores System.in
            int valores = sc.nextInt();
            numeros[i] = valores;
        }
        //mostra os valores do vetor na tela
        for (int num2 : numeros) {
            System.out.println("Valores da Lista: " + num2);
        }

        int soma = 0;
        int maior = numeros[0];
        int menor = numeros[0];

        for (int num : numeros) {
            soma += num;

            if (num > maior) {
                maior = num;
            }

            if (num < menor) {
                menor = num;
            }
        }

        double media = (double) soma / numeros.length;

        System.out.println("Soma: " + soma);
        System.out.println("Média: " + media);
        System.out.println("Maior: " + maior);
        System.out.println("Menor: " + menor);
    }
}
