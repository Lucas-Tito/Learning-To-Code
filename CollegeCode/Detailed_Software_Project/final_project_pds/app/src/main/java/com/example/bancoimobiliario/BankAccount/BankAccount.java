package com.example.bancoimobiliario.BankAccount;

public class BankAccount {
    
    private float saldo;
	
	public BankAccount(float saldo) {
		this.saldo = saldo;
	}
	
	public void depositar(float valor){
		this.saldo = saldo + valor;
	}
	public void sacar(float valor){
		this.saldo = saldo - valor;
	}
	public float getSaldo() {
		return saldo;
	}
	public void setSaldo(float saldo) {
		this.saldo = saldo;
	}
}
