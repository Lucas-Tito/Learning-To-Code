package com.example.bancoimobiliario.Player;

import com.example.bancoimobiliario.Sections.Sections;

public interface IPlayer {
    public void comprar(Sections v);
	public void pagarTaxa(float taxa);
	public void receberTaxa(float taxa);
	public void adicionarCasas();
	public int getQuantidadeCasas();
}
