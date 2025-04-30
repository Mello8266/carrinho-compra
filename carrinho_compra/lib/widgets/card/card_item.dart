import 'package:carrinho_compra/modal/item.dart';
import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class CardItem extends StatelessWidget{
  Item item;

  CardItem({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: height * 0.09,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color["backgroundCard"],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            // Nome item
            SizedBox(width: 117, child: textCard(text: item.name),),
        
            const SizedBox(width: 50,),

            // Quantidade
            SizedBox(width: 25, child: textCard(text: item.totalItens.toString()),),


            const SizedBox(width: 75,),
        
            // Preço
            SizedBox(width: 85, child: textCard(text: "R\$ ${item.priceTotal.call().toString()}"),)
          ],
        ),
      ),
    );
  }


}