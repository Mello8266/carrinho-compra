// Lista de itens da tela inicial

import 'package:carrinho_compra/modal/card_carrinho.dart';

class CardList{
  List<CardCarrinho> card = [
    CardCarrinho(
      title: 'compra do mês', 
      total: 1600, 
      itens: []
    )
  ];

  // Carregar a lista do JSON
  void initList(){

  }
}