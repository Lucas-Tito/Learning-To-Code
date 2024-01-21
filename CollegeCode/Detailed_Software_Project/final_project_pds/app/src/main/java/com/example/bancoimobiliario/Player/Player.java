package com.example.bancoimobiliario.Player;




import com.example.bancoimobiliario.BankAccount.BankAccount;
import com.example.bancoimobiliario.Sections.IObservable;
import com.example.bancoimobiliario.Policia.IObserver;
import com.example.bancoimobiliario.Sections.Sections;

import java.util.ArrayList;


public class Player implements IObservable, IPlayer {

    BankAccount account = new BankAccount(25000);
    boolean isInPrison;
    int position=0;
    IObserver iObserver;
    ArrayList<Sections> minhasCasas;
    int id;

    Sections casaAtual;

    int qtdDuplas;


    public Player() {
        this.qtdDuplas = 0;
        minhasCasas = new ArrayList<>();
        casaAtual = new Sections("inicio",200.000);
    }


    public Sections getCasaAtual() {
        return casaAtual;
    }

    public void setCasaAtual(Sections casaAtual) {
        this.casaAtual = casaAtual;
        if(this.casaAtual.getNome().equals("entre no camburao")){
            setInPrison(true);
            notifyObserver();
        }
    }

    public float getBalance() {
        return account.getSaldo();
    }

    public void setBalance(float balance) {
        account.setSaldo(balance);
    }
    public int getId(){
        return id;
    }
    public void setId(int id){
        this.id = id;
    }

    public boolean isInPrison() {
        return isInPrison;
    }

    public void setInPrison(boolean inPrison) {
        isInPrison = inPrison;
    }

    public int getPosition() {
        return position;
    }

    public void setPosition(int position) {
        this.position = position;
    }


    public int getQtdDuplas() {
        return qtdDuplas;
    }

    public void setQtdDuplas(int qtdDuplas) {
        this.qtdDuplas = qtdDuplas;
    }

    public int jogarDados()
    {
        int dado1 = (int)((Math.random() * (6 - 1)) + 1);
        int dado2 = (int)((Math.random() * (6 - 1)) + 1);
        this.qtdDuplas = (dado1 == dado2) ? this.qtdDuplas+1 : 0;

        if(this.qtdDuplas == 3){
            this.isInPrison = true;
            return -1;
        }


        
        return (dado1 + dado2);
    }

    public int moverJogador()
    {
        int somaDados = jogarDados();
        if(getPosition()+ somaDados > 39){
            setPosition(getPosition()+ somaDados-39);
            setBalance(getBalance()+2000);//bonificação de quando o player completa uma volta
        }
        else{
            setPosition(getPosition()+ somaDados);
        }
        return getPosition();
    }

    @Override
    public void addObserver(IObserver iObserver) {
        this.iObserver = iObserver;
    }

    @Override
    public void notifyObserver() {
        iObserver.update(this);
    }


    @Override
    public void comprar(Sections Casa) {
        if(Casa.getValor() <= account.getSaldo()){
            minhasCasas.add(Casa);
            setBalance((float) (getBalance()-Casa.getValor()));
        }
    }


    @Override
    public void pagarTaxa(float taxa) {
        setBalance((float) (getBalance()-taxa));
        
    }


    @Override
    public void receberTaxa(float taxa) {
        setBalance((float) (getBalance()+taxa));

    }


    @Override
    public void adicionarCasas() {
        /* minhasCasas.add(); */
        
    }


    @Override
    public int getQuantidadeCasas() {
        /* return minhasCasas.size(); */
        return 0;
    }
    @Override
    public String toString(){
        return "Jogador: "+0;
    }
    public BankAccount getConta(){
        return account;
    }


}
