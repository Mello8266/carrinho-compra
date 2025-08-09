import 'package:carrinho_compra/controller/card_screen_control.dart';
import 'package:carrinho_compra/repositore/item_list.dart';
import 'package:carrinho_compra/widgets/card/card_item.dart';
import 'package:carrinho_compra/widgets/card/pop_up.dart';
import 'package:carrinho_compra/widgets/card/popup_appbar.dart';
import 'package:carrinho_compra/widgets/card/price_widget.dart';
import 'package:carrinho_compra/widgets/initial/floating_button.dart';
import 'package:carrinho_compra/widgets/search_bar.dart';
import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardScreen extends StatefulWidget {
  ItemList itemList;
  String appBarName;
  CardScreen({super.key, required this.itemList, required this.appBarName});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  final CardScreenControl controllView = CardScreenControl();

  late ItemList itemList;

  late String appBarName;
  TextEditingController controllAppbar = TextEditingController();

  bool _isLoading = false;

  void isLoading(){
    setState(() {
      _isLoading = !_isLoading;
    });
  }
  
  @override
  void initState() {
    super.initState();
    itemList = widget.itemList;
    appBarName = widget.appBarName;
    controllAppbar.addListener(() => updateTitle(controllAppbar.text));
  }

  void updateTitle(String newTitle) {
    setState(() {
      appBarName = newTitle.isEmpty ? widget.appBarName : newTitle;
    });
  }

  @override
  void dispose() {
    controllAppbar.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return _isLoading 
    ? const Scaffold(
      body: Center(child: CircularProgressIndicator(),),
    )
    : Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onLongPress: () {
            final popUp = PopupAppbar(controllAppbar: controllAppbar);

            return popUp.popupAppbar(context);
          },
          child: textAppBar(text: appBarName),
        ),
        backgroundColor: color["backgroundCard"],
      ),

      // Adicionar novo item
      floatingActionButton: FloatingButtonInitial(callView: () {
        final popUp = PopUp(
          itens: itemList.itens, 
          closed: () => Navigator.pop(context),
        );
        return popUp.popUp(context);
      },),

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
          PriceWidget(price: 'Preço total: R\$ ${controllView.formatNum(n: controllView.calcPriceTotal(list: itemList.itens))}',)
        ],
      ),
    )    ;
  }
}