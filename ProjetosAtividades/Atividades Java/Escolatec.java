/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package escolatec;

/**
 *
 * @author gabriela.adias11
 */
public class Escolatec {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       
        alunos objA01 = new alunos();
        objA01.setNome("Maria");
        objA01.setMatrícula("12345678");
        objA01.setCurso("DS");
        objA01.setTelefone("1195709570");
        objA01.setEmail("mariasapa06@gmail.com");
        System.out.println(objA01.getNome());
        System.out.println(objA01.getMatrícula());
        System.out.println(objA01.getCurso());
        System.out.println(objA01.getTelefone());
        System.out.println(objA01.getEmail());
        
        alunos objA02 = new alunos();
        objA02.setNome("Aline");
        objA02.setMatrícula("13578642");
        objA02.setCurso("Design");
        objA02.setTelefone("11997075837");
        objA02.setEmail("alineline06@gmail.com");
        System.out.println(objA02.getNome());
        System.out.println(objA02.getMatrícula());
        System.out.println(objA02.getCurso());
        System.out.println(objA02.getTelefone());
        System.out.println(objA02.getEmail());
        
        alunos objA03 = new alunos();
        objA03.setNome("Alice");
        objA03.setMatrícula("24687531");
        objA03.setCurso("Engenharia");
        objA03.setTelefone("11999999999");
        objA03.setEmail("alicepice06@gmail.com");
        System.out.println(objA03.getNome());
        System.out.println(objA03.getMatrícula());
        System.out.println(objA03.getCurso());
        System.out.println(objA03.getTelefone());
        System.out.println(objA03.getEmail());
        
       
        professor objP01 = new professor();
        objP01.setNome("Pedro");
        objP01.setMatrícula("87654321");
        objP01.setDisciplina("DS");
        objP01.setTelefone("11953456785");
        objP01.setEmail("pedropedra06@gmail.com");
        System.out.println(objP01.getNome());
        System.out.println(objP01.getMatrícula());
        System.out.println(objP01.getDisciplina());
        System.out.println(objP01.getTelefone());
        System.out.println(objP01.getEmail());
        
        professor objP02 = new professor();
        objP02.setNome("Mohammed");
        objP02.setMatrícula("87654325");
        objP02.setDisciplina("Design");
        objP02.setTelefone("11953456798");
        objP02.setEmail("Mohammedpedra06@gmail.com");
        System.out.println(objP02.getNome());
        System.out.println(objP02.getMatrícula());
        System.out.println(objP02.getDisciplina());
        System.out.println(objP02.getTelefone());
        System.out.println(objP02.getEmail());
        
        professor objP03 = new professor();
        objP03.setNome("Malfoy");
        objP03.setMatrícula("87654725");
        objP03.setDisciplina("Design");
        objP03.setTelefone("11978456798");
        objP03.setEmail("Malfoyluciu06@gmail.com");
        System.out.println(objP03.getNome());
        System.out.println(objP03.getMatrícula());
        System.out.println(objP03.getDisciplina());
        System.out.println(objP03.getTelefone());
        System.out.println(objP03.getEmail());
    }
   
}
