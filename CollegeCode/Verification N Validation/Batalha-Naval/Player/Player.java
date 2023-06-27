package Player;
import java.util.Scanner;

public class Player {
    String name;
    int attempts=0, hitsScored=0;

    public static void darTiro(int[] tiro){
        Scanner entrada = new Scanner(System.in);
        
        System.out.print("Linha: ");
        tiro[0] = entrada.nextInt();
        tiro[0]--;
        
        System.out.print("Coluna: ");
        tiro[1] = entrada.nextInt();
        tiro[1]--;
        
    }

    public void increaseAttempts(){
        attempts++;
    }

    public void increaseHitsScored(){
        hitsScored++;
    }

    public int getHitsScored(){
        return hitsScored;
    }
}
