package com.example.bancoimobiliario;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.example.bancoimobiliario.Policia.IObserver;
import com.example.bancoimobiliario.Board.BoardGame;
import com.example.bancoimobiliario.Player.Player;
import com.example.bancoimobiliario.Policia.Police;
import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {
    BoardGame boardGame = BoardGame.getInstance() ;
    Button btnSim,btnNo;
    TextView casa, status;
    int[] arr = new int[40];

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        /*Dialog_RollDices dialog_rollDices = new Dialog_RollDices(new Dialog_RollDices.executeMethod() {
            @Override
            public void method() {
                boardGame.jogarDados();
            }
        });
        dialog_rollDices.show(getSupportFragmentManager(), "TAG");*/


        btnSim = findViewById(R.id.yesBtn);
        btnNo = findViewById(R.id.noBtn);
        casa = findViewById(R.id.casaAtual);
        status = findViewById(R.id.status);

        build_rollDice_btn();


        arr[0]=R.id.s0;
        arr[1]=R.id.s1;
        arr[2]=R.id.s2;
        arr[3]=R.id.s3;
        arr[4]=R.id.s4;
        arr[5]=R.id.s5;
        arr[6]=R.id.s6;
        arr[7]=R.id.s7;
        arr[8]=R.id.s8;
        arr[9]=R.id.s9;
        arr[10]=R.id.s10;
        arr[11]=R.id.s11;
        arr[12]=R.id.s12;
        arr[13]=R.id.s13;
        arr[14]=R.id.s14;
        arr[15]=R.id.s15;
        arr[16]=R.id.s16;
        arr[17]=R.id.s17;
        arr[18]=R.id.s18;
        arr[19]=R.id.s19;
        arr[20]=R.id.s20;
        arr[21]=R.id.s21;
        arr[22]=R.id.s22;
        arr[23]=R.id.s23;
        arr[24]=R.id.s24;
        arr[25]=R.id.s25;
        arr[26]=R.id.s26;
        arr[27]=R.id.s27;
        arr[28]=R.id.s28;
        arr[29]=R.id.s29;
        arr[30]=R.id.s30;
        arr[31]=R.id.s31;
        arr[32]=R.id.s32;
        arr[33]=R.id.s33;
        arr[34]=R.id.s34;
        arr[35]=R.id.s35;
        arr[36]=R.id.s36;
        arr[37]=R.id.s37;
        arr[38]=R.id.s38;
        arr[39]=R.id.s39;
    }


    boolean playerPreso;

    private void build_rollDice_btn() {
        playerPreso = boardGame.getCurrentPlayer().isInPrison();


            Button rollDice = findViewById(R.id.rollDice);
            rollDice.setOnClickListener(new View.OnClickListener() {



                @SuppressLint("NewApi")
                @Override
                public void onClick(View view) {
                    setInvisible();
                    if(!playerPreso) {

                        playerPreso = boardGame.getCurrentPlayer().isInPrison();

                    TextView sectionLabel = findViewById(R.id.sectionLabel);
                    TextView balanceLabel = findViewById(R.id.balanceLabel);
                    Player currentPlayer = boardGame.getCurrentPlayer();
                    int position = currentPlayer.getPosition();


                    LinearLayout section = findViewById(arr[position]);
                    section.setForeground(null);


                    sectionLabel.setText("Você está em: " + boardGame.jogarDados());
                    balanceLabel.setText("Balance: " + currentPlayer.getBalance());
                    position = boardGame.getCurrentPlayerPosition();
                    System.out.println("amoguinhos: " + position);
                    section = findViewById(arr[position]);
                    section.setForeground(getResources().getDrawable(R.drawable.pawn_car));

                    if (boardGame.getCurrentPlayerHouse().getNome().contains("companhia") || boardGame.getCurrentPlayerHouse().getNome().contains("av") || boardGame.getCurrentPlayerHouse().getNome().contains("praca")) {
                        setVisible();
                        status.setText("preço: " + boardGame.getCurrentPlayerHouse().getValor());

                        btnSim.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View view) {
                                boardGame.getCurrentPlayerCompra(boardGame.getCurrentPlayerHouse());
                                setInvisible();
                            }
                        });
                        btnNo.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View view) {
                                setInvisible();
                            }
                        });
                    }
                }
                    else {
                        Toast.makeText(MainActivity.this, "Jogador preso", Toast.LENGTH_SHORT).show();
                    }
                }

            });


    }
    public void setVisible(){
        btnNo.setVisibility(View.VISIBLE);
        btnSim.setVisibility(View.VISIBLE);
        casa.setVisibility(View.VISIBLE);
        status.setVisibility(View.VISIBLE);
    }
    public void setInvisible(){
        btnNo.setVisibility(View.INVISIBLE);
        btnSim.setVisibility(View.INVISIBLE);
        casa.setVisibility(View.INVISIBLE);
        status.setVisibility(View.INVISIBLE);
    }


}