package com.example.bancoimobiliario.Cartas;

import android.widget.Toast;

import com.example.bancoimobiliario.Player.Player;
import com.example.bancoimobiliario.Sections.ISectionEffect;

import java.util.ArrayList;

public class SorteReves implements ISectionEffect {
    ArrayList<String> cartas;

    public SorteReves(){
        cartas = new ArrayList<>();
    }
    public void inicializaCartas(){
        cartas.add("Sorte: Uma herança inesperada. Jogador recebe: R$ 75.000");
        cartas.add("Sorte: Sua casa será desapropriada para a contrução de um metrô: Jogador recebe idenização de R$ 60.000");
        cartas.add("Sorte: Silvio santos te deu R$ 10.000");
        cartas.add("Azar: Voce perdeu R$ 25.000");
        cartas.add("Azar: voce foi roubado em R$ 45.000");
        cartas.add("Azar: Perdeu tudo, nome no SERASA");
    }

    @Override

    public void ativaEfeito(Player player)
    {
        int cardPosition = (int)((Math.random() * (6 - 1)) + 1);
        System.out.println("Card soteado: "+ cartas.get(cardPosition));
        switch (cartas.get(cardPosition))
        {
            case "Sorte: Uma herança inesperada. Jogador recebe: R$ 75.000":
                player.setBalance(75000.00F);
                break;
            case "Sorte: Sua casa será desapropriada para a contrução de um metrô: Jogador recebe idenização de R$ 60.000":
                player.setBalance(60000.00F);
                break;
            case "Sorte: Silvio santos te deu R$ 10.000":
                player.setBalance(10000.00F);
                break;
            case "Azar: Voce perdeu R$ 25.000":
                player.pagarTaxa(25000.00F);
                break;
            case "Azar: voce foi roubado em R$ 45.000":
                player.pagarTaxa(45000.00F);
                break;
            case "Azar: Perdeu tudo, nome no SERASA":
                player.pagarTaxa(player.getBalance());
                break;

        }

    }
}
