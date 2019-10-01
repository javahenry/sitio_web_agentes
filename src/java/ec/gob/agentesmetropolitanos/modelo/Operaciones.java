/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.gob.agentesmetropolitanos.modelo;

import java.util.Arrays;
import javax.swing.JOptionPane;

/**
 *
 * @author Santiago
 */
public class Operaciones {

    private static int fac;
    private static int[] lista;

    public static int factorial(int num) {
        fac = 1;
        for (int i = 1; i <= num; i++) {
            fac *= i;
        }
        return fac;
    }

    public static void dimensionar(int dim) {

        lista = new int[dim];
    }

    public static void llenarArreglo() {
        for (int i = 0; i < lista.length; i++) {
            lista[i] = (int) (Math.random() * 100);
        }
    }

    public static String imprimir() {
        return Arrays.toString(lista);
    }

    public static int maximo() {
        Arrays.sort(lista);
        return lista[lista.length - 1];
    }

    public static int minimo() {
        Arrays.sort(lista);
        return lista[0];
    }

    public static String valores() {

        return "Los elementos de la lista son: " + imprimir() + "<br>"
                + "El valor Maximo es: " + maximo() + "<br>"
                + "El minimo es: " + minimo();
    }
    
    public int sumaSolis(){
       return 5;
    }

    public int ricardo(){
       return 5;
    }
}
