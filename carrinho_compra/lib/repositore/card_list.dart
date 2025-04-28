// Lista de itens da tela inicial

import 'package:carrinho_compra/modal/card_carrinho.dart';
import 'package:carrinho_compra/modal/item.dart';

class CardList{
  List<CardCarrinho> card = [
    CardCarrinho(
      title: 'compra do mês', 
      total: 1600, 
      itens: <Item>[]
    )
  ];

  // Carregar a lista do JSON
  void initList(){

  }
}