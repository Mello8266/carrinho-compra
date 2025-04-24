import 'package:flutter/material.dart';

const color = {
  "backgroundScreen": Color.fromRGBO(191, 190, 156, 60),
  "backgroundCard": Color.fromRGBO(252, 246, 219, 100),
  "marromEscuro": Color.fromRGBO(74, 70, 51, 100),
  "verde": Color.fromRGBO(51, 145, 47, 100),
  "vermelho": Color.fromRGBO(255, 49, 49, 100),
  "amarelo": Color.fromRGBO(255, 222, 89, 100),
  "white": Colors.white
};

// Text Style
Text textCardInitialTittle({required String text}){
  return Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      fontFamily: "DMSans"
    ),
  );
}

Text textCardInitialPrice({required String text}){
  return Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontSize: 16,
      fontFamily: "DMSans",
      fontWeight: FontWeight.w400
    ),
  );
}