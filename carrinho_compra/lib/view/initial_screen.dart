import 'package:carrinho_compra/modal/card_carrinho.dart';
import 'package:carrinho_compra/modal/item.dart';
import 'package:carrinho_compra/repositore/card_list.dart';
import 'package:carrinho_compra/repositore/item_list.dart';
import 'package:carrinho_compra/view/card_screen.dart';
import 'package:carrinho_compra/widgets/initial/floating_button.dart';
import 'package:carrinho_compra/widgets/initial/card_initial.dart';
import 'package:carrinho_compra/widgets/search_bar.dart';
import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  final CardList cardList = CardList();
  late List<CardCarrinho> list;

  @override
  void initState() {
    super.initState();
    list = cardList.card;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplicativo"),
        backgroundColor: color["backgroundCard"],
      ),

      // Criar novo card de compras
      floatingActionButton: FloatingButtonInitial(
        callView: () => Navigator.push(context, 
          MaterialPageRoute(builder: (_) {
            ItemList newObj = ItemList(itens: []);
            return CardScreen(itemList: newObj,);
          })
        )
      ),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          children: <Widget>[
            // Barra de pesquisa
            SizedBox(height: height *0.06, child: SearchBars(width: width, height: height,)),

            const SizedBox(height: 10,),
        
            // Cards
            Expanded(flex: 11, child: GridView.builder(
              itemCount: list.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount (crossAxisCount: 2),
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Cardinitial(
                    cardCarrinho: list[index],
                  ),
                );
              }
            )
            )
          ],
        ),
      ),
    );
  }
}