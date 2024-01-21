package com.example.bancoimobiliario.Properties;

import com.example.bancoimobiliario.Player.Player;

public interface IProperty extends IStrategy {


    @Override
    public float cobrarAluguel();
    public void setOwner(Player owner);

}
