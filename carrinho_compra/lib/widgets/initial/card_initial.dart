import 'package:carrinho_compra/controller/controll_view.dart';
import 'package:carrinho_compra/modal/compra.dart';
import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cardinitial extends StatelessWidget{
  final controllView = ControllView();
  Compra cardCarrinho;
  
  Cardinitial({
    required this.cardCarrinho,
    super.key
  });

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
            textCardInitialTittle(text: cardCarrinho.tittle),
        
            Center(child: textCardInitialPrice(text: 'R\$ ${controllView.formatNum(n: cardCarrinho.tot())}')),        
          ],
        ),
      ),
    );
  }

}