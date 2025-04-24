import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

class Cardinitial extends StatelessWidget{
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
            textCardInitialTittle(text: "Compra do mês"),
        
            Center(child: textCardInitialPrice(text: "RS 1.800,00")),
        
            SizedBox()
        
          ],
        ),
      ),
    );
  }

}