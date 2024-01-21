package com.example.bancoimobiliario.Sections;

import com.example.bancoimobiliario.Player.Player;

import java.util.ArrayList;



public class Prison implements ISectionEffect {
    ArrayList<Player> jogadoresPresos;

    public Prison(){
        jogadoresPresos = new ArrayList<>();
    }

    @Override
    public void ativaEfeito(Player player) {
/*         player.pagarTaxa(100);
 */        jogadoresPresos.add(player);
        
    }
    public void presos(){
        for(int i= 0; i < jogadoresPresos.size(); i++){
            System.out.println(jogadoresPresos.get(i));
        }
    }
}
