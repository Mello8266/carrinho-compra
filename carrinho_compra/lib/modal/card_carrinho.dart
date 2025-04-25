import 'package:carrinho_compra/modal/item.dart';

// Objeto da tela inical que carrega a lista 
class CardCarrinho{
  String title;
  List<Item> itens;

  // Mudar essa variável para metodo
  double total;

  double tot(){
    double total1 = 0;

    for (var i in itens){
      total1 += i.price;
    }

    return total1;
  }

  CardCarrinho({
    required this.title,
    required this.total,
    required this.itens
  });
}