package com.example.bancoimobiliario.Policia;


import com.example.bancoimobiliario.Player.Player;
import com.example.bancoimobiliario.Sections.Prison;




public class Police implements IObserver {
    Prison prison = new Prison();

    @Override
    public void update(Player player) {
        prison.ativaEfeito(player);
        
    }
    public void presos(){
        prison.presos();
    }
    
}
