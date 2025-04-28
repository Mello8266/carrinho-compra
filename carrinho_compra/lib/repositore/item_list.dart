import 'package:carrinho_compra/modal/item.dart';

// Lista de itens 
class ItemList{
  double total = 0;
  List<Item> itens;

  ItemList({required this.itens});
  
  double calcPrice(){
    for(var i in itens){
      total += i.priceTotal();
    }

    return total;
  }
}