import 'package:carrinho_compra/modal/item.dart';

// Lista de itens 
class ItemList{
  List<Item> itens = [];
  double total = 0;

  calcPrice(){
    for(var i in itens){
      total += i.priceTotal();
    }

    return total;
  }
}