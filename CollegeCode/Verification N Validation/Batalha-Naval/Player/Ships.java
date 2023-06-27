package Player;

import java.util.Random;

public class Ships {
    int[][] navios = new int[3][2];


    public Ships(){
        Random raffle = new Random();
        
        for(int navio=0 ; navio < 3 ; navio++){
            navios[navio][0]=raffle.nextInt(5);
            navios[navio][1]=raffle.nextInt(5);
            
            //agora vamos checar se esse par não foi sorteado
            //se foi, so sai do do...while enquanto sortear um diferente
            for(int anterior=0 ; anterior < navio ; anterior++){
                if( (navios[navio][0] == navios[anterior][0])&&(navios[navio][1] == navios[anterior][1]) )
                    do{
                        navios[navio][0]=raffle.nextInt(5);
                        navios[navio][1]=raffle.nextInt(5);
                    }while( (navios[navio][0] == navios[anterior][0])&&(navios[navio][1] == navios[anterior][1]) );
            }
            
        }
    }


    public boolean hitWasTaken(int[] tiro){
        
        for(int navio=0 ; navio<navios.length ; navio++){
            if( tiro[0]==navios[navio][0] && tiro[1]==navios[navio][1]){
                System.out.printf("Você acertou o tiro (%d,%d)\n",tiro[0]+1,tiro[1]+1);
                return true;
            }
        }
        return false;
    }

}
