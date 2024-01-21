package com.example.bancoimobiliario;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;


import com.google.android.material.bottomsheet.BottomSheetDialogFragment;

public class Dialog_RollDices extends BottomSheetDialogFragment {

    public interface executeMethod{
        void method();
    }

    executeMethod executeMethod;
    public Dialog_RollDices(executeMethod executeMethod) {
        this.executeMethod = executeMethod;
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View v = inflater.inflate(R.layout.dialog_roll_dices, container, false);



        getDialog().getWindow().setLayout(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        //getDialog().getWindow().getAttributes().windowAnimations = R.style.DialogAnimation;


        Button rollDices = v.findViewById(R.id.rollDices);

        rollDices.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                System.out.println("oi");
                executeMethod.method();
                dismiss();
            }
        });

        return v;
    }




}
