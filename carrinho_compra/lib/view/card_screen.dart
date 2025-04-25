import 'package:carrinho_compra/controller/card_screen_control.dart';
import 'package:carrinho_compra/repositore/item_list.dart';
import 'package:carrinho_compra/widgets/card/card_item.dart';
import 'package:carrinho_compra/widgets/card/price_widget.dart';
import 'package:carrinho_compra/widgets/initial/floating_button.dart';
import 'package:carrinho_compra/widgets/search_bar.dart';
import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  final CardScreenControl controllView = CardScreenControl();
  final ItemList itemList = ItemList();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: textAppBar(text: "Compra de ${controllView.formatDate()}"),
        backgroundColor: color["backgroundCard"],
      ),
      floatingActionButton: FloatingButtonInitial(callView: () { },),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        children: [
          // Barra de pesquisa
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              height: height * 0.06,
              child: SearchBars(width: width, height: height,),
            ),
          ),
      
          // Itens
          Expanded(
            flex: 16,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: itemList.itens.length,
              itemBuilder: (BuildContext context, int index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                  child: CardItem(item: itemList.itens[index],)
                );
              }
            ),
          ),
      
          // Preço total
          PriceWidget(price: 'Preço total: R\$ 1.800',)
        ],
      ),
    );
  }
}