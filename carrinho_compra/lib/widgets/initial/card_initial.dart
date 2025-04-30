import 'package:carrinho_compra/modal/compra.dart';
import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cardinitial extends StatelessWidget{
  Compra cardCarrinho;
  
  Cardinitial({
    required this.cardCarrinho,
    super.key
  });


  String format(){
    String nFormat = cardCarrinho.tot().toString();

    nFormat = nFormat.replaceAllMapped('.', (match) => ',');

    if(cardCarrinho.tot() > 999){
      nFormat = nFormat.replaceRange(1, 1, '.');
    }

    return nFormat;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color["backgroundCard"],
        borderRadius: BorderRadius.circular(16)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            textCardInitialTittle(text: cardCarrinho.tittle!),
        
            Center(child: textCardInitialPrice(text: 'R\$ ${format()}')),
        
            SizedBox()
        
          ],
        ),
      ),
    );
  }

}