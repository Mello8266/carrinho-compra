import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PriceWidget extends StatelessWidget{
  String price;

  PriceWidget({required this.price});
  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.07,
      decoration: BoxDecoration(
        color: color["backgroundCard"]
      ),
      child: Center(
        child: textPrice(text: price),
      ),

    );
  }



}