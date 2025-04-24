import 'package:carrinho_compra/modal/card_carrinho.dart';
import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cardinitial extends StatelessWidget{
  CardCarrinho cardCarrinho;
  
  Cardinitial({
    required this.cardCarrinho,
    super.key
  });


  String format(){
    String nFormat = cardCarrinho.total.toString();

    nFormat = nFormat.replaceAllMapped('.', (match) => ',');

    if(cardCarrinho.total > 999){
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
            textCardInitialTittle(text: cardCarrinho.title),
        
            Center(child: textCardInitialPrice(text: 'R\$ ${format()}')),
        
            SizedBox()
        
          ],
        ),
      ),
    );
  }

}