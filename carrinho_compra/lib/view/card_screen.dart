import 'package:carrinho_compra/controller/card_screen_control.dart';
import 'package:carrinho_compra/modal/item.dart';
import 'package:carrinho_compra/repositore/item_list.dart';
import 'package:carrinho_compra/widgets/card/card_item.dart';
import 'package:carrinho_compra/widgets/card/pop_up.dart';
import 'package:carrinho_compra/widgets/card/price_widget.dart';
import 'package:carrinho_compra/widgets/initial/floating_button.dart';
import 'package:carrinho_compra/widgets/search_bar.dart';
import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardScreen extends StatefulWidget {
  List<Item> itemList;
  CardScreen({super.key, required this.itemList});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  final CardScreenControl controllView = CardScreenControl();
  late List<Item> itemList;
  
  
  @override
  void initState() {
    super.initState();
    itemList = widget.itemList;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: textAppBar(text: "Compra de ${controllView.formatDate()}"),
        backgroundColor: color["backgroundCard"],
      ),
      floatingActionButton: FloatingButtonInitial(callView: () => PopUp.popUp(context),),
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
              itemCount: itemList.length,
              itemBuilder: (BuildContext context, int index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                  child: CardItem(item: itemList[index],)
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