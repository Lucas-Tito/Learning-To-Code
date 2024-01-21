package com.example.bancoimobiliario.Properties;

import com.example.bancoimobiliario.Player.Player;
import com.example.bancoimobiliario.Sections.Sections;

public class Property extends Sections implements IProperty{

    int value;
    Player owner;

    public Property(String nome) {
        super(nome);
    }

    public Property(String nome, Double valor) {
        super(nome, valor);
    }


    @Override
    public float cobrarAluguel() {
        return 0;
    }

    @Override
    public void setOwner(Player owner) {

    }
}
