import 'package:carrinho_compra/controller/card_screen_control.dart';
import 'package:carrinho_compra/modal/item.dart';
import 'package:carrinho_compra/widgets/card/pop_up.dart';
import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class CardItem extends StatelessWidget{
  Item item;
  List<Item> itens;
  final cardScreenControl = CardScreenControl();

  CardItem({required this.item, required this.itens, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onDoubleTap: (){
        final popUp = PopUp(
          itens: itens, 
          closed: () => Navigator.pop(context),
          function: 'edit',
          item: item
        );
        return popUp.popUp(context);
      },
      child: Container(
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
              SizedBox(width: 85, child: textCard(text: "R\$ ${cardScreenControl.formatNum(n: item.priceTotal.call())}"),)
            ],
          ),
        ),
      ),
    );
  }


}