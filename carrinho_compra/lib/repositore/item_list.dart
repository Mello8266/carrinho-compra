import 'package:carrinho_compra/modal/item.dart';

// Lista de itens 
class ItemList{
  List<Item> itens = [
    Item(
      name: "Carne foda", 
      totalItens: 2, 
      price: 53
    )
  ];
  double total = 0;

  double calcPrice(){
    for(var i in itens){
      total += i.priceTotal();
    }

    return total;
  }
}