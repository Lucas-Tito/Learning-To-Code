package Player;

public class Board {
    int[][] board = new int[5][5];
    Ships ships = new Ships();

    public Board(){
        for(int l=0 ; l < 5 ; l++ )
            for(int r=0 ; r < 5 ; r++ )
                board[l][r]=-1;
    }
    

    public void updateBoard(int[] tiro, int[][] navios, int[][] tabuleiro){
        if(ships.hitWasTaken(tiro))
            tabuleiro[tiro[0]][tiro[1]]=1;
        else
            tabuleiro[tiro[0]][tiro[1]]=0; 
            
    }

    
    @Override
    public String toString(){
        String output = "\t1 \t2 \t3 \t4 \t5";

        output += "\n";
        
        for(int l=0 ; l < 5 ; l++ ){
            output += (l+1)+"";

            for(int r=0 ; r < 5 ; r++ ){
                if(board[l][r]==-1){
                    output += "\t"+"~";
                }else if(board[l][r]==0){
                    output += "\t"+"*";
                }else if(board[l][r]==1){
                    output += "\t"+"X";
                }
                
            }
            output += "\n";
        }

        return output;
    }
}
