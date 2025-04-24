import 'package:carrinho_compra/repositore/item_list.dart';

// Objeto da tela inical que carrega a lista 
class CardCarrinho{
  String title;
  double total;
  List<ItemList> itens;

  CardCarrinho({
    required this.title,
    required this.total,
    required this.itens
  });
}