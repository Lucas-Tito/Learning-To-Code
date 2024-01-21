package com.example.bancoimobiliario.Sections;

import com.example.bancoimobiliario.Policia.IObserver;

public interface IObservable {
    public void addObserver(IObserver iObserver);
    public void notifyObserver();
}
