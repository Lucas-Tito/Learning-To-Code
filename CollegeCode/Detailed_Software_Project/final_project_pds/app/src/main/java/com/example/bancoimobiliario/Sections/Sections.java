package com.example.bancoimobiliario.Sections;
import com.example.bancoimobiliario.Board.IBoardGame;
import com.example.bancoimobiliario.Player.Player;

import java.util.ArrayList;



public class Sections implements ISectionEffect, IBoardGame {
    private String nome;
	private ArrayList<Player> jogadoresNaCasa;
    double valor;


    public Sections(String nome){
        this.nome = nome;
        jogadoresNaCasa = new ArrayList<>();
    }


    public Sections(String nome, Double valor){
        this.nome = nome;
        this.valor = valor;
        jogadoresNaCasa = new ArrayList<>();
    }


    @Override
    public void adicionarJogadoresNaListaDaCasa(Player player) {
        jogadoresNaCasa.add(player);
        
    }


    @Override
    public void removerJogadoresDaListaDaCasa(Player player) {
        jogadoresNaCasa.remove(player);
        
    }


    @Override
    public void ativaEfeito(Player player) {
        if(nome.contains("restituição")){
            player.receberTaxa(200.000f);
        }
        else if(nome.contains("receita")){
            player.pagarTaxa(200.000f);
        }
        
    }
    public Sections getSections(){
        return this;
    }
    public double getValor(){
        return valor;
    }


    public String getNome() {
        return nome;
    }
}
