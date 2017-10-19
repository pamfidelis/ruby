import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.File;
import java.util.*;

public class Main{
  public static void main(String[] args){
    String node;
    int qtd_msg;
    String [] mensagem_final = new String[5];
    
    try{
        File novo_arquivo = new File("broadcast.txt");
        
        FileReader fArquivo = new FileReader(novo_arquivo);
        BufferedReader arquivo= new BufferedReader(fArquivo); 
        
        node = arquivo.readLine();
        
        String sQtd_msg = arquivo.readLine();
        qtd_msg = Integer.parseInt(sQtd_msg);
        
        String linha = arquivo.readLine();
        
        while(linha != null){
          String [] mensagem = linha.split(","); 
          
          String receptor = mensagem[0].substring(1, mensagem[0].length());
    
          String comando = mensagem[1];
          
          int posicao = Integer.parseInt(mensagem[2].substring(0, mensagem[2].length() -1));
          
         if(receptor.equals(node)){
            if(!Arrays.asList(mensagem_final).contains(comando)){
              mensagem_final[posicao] = comando;
              
            }
          }
          
          linha = arquivo.readLine(); 
        }
        
        for(String msg : mensagem_final){
          if(msg != null)
            System.out.println(msg);  
      }
    
      } catch (IOException e) {
        System.out.println("Erro ao ler o arquivo");
    }
  }
}