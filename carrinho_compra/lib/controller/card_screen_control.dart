import 'package:carrinho_compra/controller/controll_view.dart';
import 'package:carrinho_compra/modal/item.dart';
import 'package:flutter/material.dart';

class CardScreenControl extends ControllView{
  double calcPriceTotal({required List<Item> list}){
    double total = 0;

    for(var i in list){
      total += i.priceTotal();
    }

    return total;
  }

  // Botão editar nome
  showInputDialog(BuildContext context){
    TextEditingController txtControll = TextEditingController();

    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: const Text('Alterar título'),
        content: TextFormField(
          controller: txtControll,
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: const Text("Cancelar")),

          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: const Text("Salvar"))
        ],
      );
    });
  }
}