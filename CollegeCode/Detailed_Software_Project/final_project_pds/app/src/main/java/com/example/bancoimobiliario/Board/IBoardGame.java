package com.example.bancoimobiliario.Board;

import com.example.bancoimobiliario.Player.Player;

public interface IBoardGame {
    public void adicionarJogadoresNaListaDaCasa(Player player);
	public void removerJogadoresDaListaDaCasa(Player player);
}
