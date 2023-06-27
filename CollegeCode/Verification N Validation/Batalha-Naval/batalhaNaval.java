import Player.Board;

public class batalhaNaval {

    public static void main(String[] args) {
        Board board = new Board();
        int[] tiro = new int[2];
        
        System.out.println();
        
        do{
            System.out.println(board);
            //playerdaVez.darTiro(tiro);
            //player.increaseAttempts();
            
            // if(acertou(tiro,navios)){
            //     player.increaseHitsScored();
            // }                
            //else
                //dica(tiro,navios,tentativas);
            
            //alteraTabuleiro(tiro,navios,tabuleiro);
            
                //o true só tá aí pro vscode não ficar apitando que o código tá errado
        }while(true/*player1.getHitsScored()!=3 || player2.getHitsScored()*/);
        
        // System.out.println("\n\n\nJogo terminado. Você acertou os 3 navios em "+tentativas+" tentativas");
        // System.out.println(board);
    }

}


