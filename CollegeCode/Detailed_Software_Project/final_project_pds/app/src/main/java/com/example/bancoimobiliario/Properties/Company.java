package com.example.bancoimobiliario.Properties;

import com.example.bancoimobiliario.Player.Player;
import com.example.bancoimobiliario.Sections.Sections;

public class Company extends Sections implements IProperty {


    int value;
    Player owner;

    public Company(String nome) {
        super(nome);
    }

    public Company(String nome, Double valor) {
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
