package com.example.bancoimobiliario.Board;




import com.example.bancoimobiliario.Player.Player;
import com.example.bancoimobiliario.Policia.IObserver;
import com.example.bancoimobiliario.Policia.Police;
import com.example.bancoimobiliario.Sections.Sections;

import java.util.ArrayList;

public final class BoardGame {

    private static BoardGame instance;
    ArrayList<Sections> sections = com.example.bancoimobiliario.utils.initializeSections.initializeSections();
    ArrayList<Player> players = new ArrayList<>();
    //int valorDado;
    IObserver iObserver = new Police();



    private BoardGame(){
        System.out.println("O jogo acaba de iniciar, você está na casa: " + sections.get(0));
        players.add(new Player());
        players.get(0).addObserver(iObserver);
        players.get(0).setCasaAtual(new Sections("inicio",200.000));
    }

    public static BoardGame getInstance(){
        if(instance == null){
            instance = new BoardGame();
        }

        return instance;
    }


    public Sections getCurrentPlayerHouse(){
        return players.get(0).getCasaAtual();
    }
    public void getCurrentPlayerCompra(Sections casa){
        players.get(0).comprar(players.get(0).getCasaAtual());
    }

    public int getCurrentPlayerPosition() {
        return players.get(0).getPosition();
    }

    public Player getCurrentPlayer(){
        return players.get(0);
    }


    public String jogarDados()
    {
        int diceResult = players.get(0).moverJogador();


        //desse jeito aqui ele anda e só depois é preso na 3º vez
        if(diceResult == -1){
            //mover jogador pra cadeia
        }
        else{

            //sets player in new section
            //verify player is in prison
            if(!players.get(0).isInPrison()) {

                players.get(0).setCasaAtual(sections.get(players.get(0).getPosition()).getSections());
                sections.get(players.get(0).getPosition()).ativaEfeito(players.get(0));


                System.out.println("Você tirou: " + diceResult + " no dado");
                System.out.println("sus" + sections.get(players.get(0).getPosition()).getNome());
                return sections.get(players.get(0).getPosition()).getNome();



            }else{

                System.out.println("Jogador preso");
            }
            
        }

        return "vazio";
    }



}
