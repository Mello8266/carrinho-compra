import 'package:carrinho_compra/view/card_screen.dart';
import 'package:carrinho_compra/widgets/floating_button.dart';
import 'package:carrinho_compra/widgets/initial/card_initial.dart';
import 'package:carrinho_compra/widgets/search_bar.dart';
import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplicativo"),
        backgroundColor: color["backgroundCard"],
      ),

      floatingActionButton: FloatingButton(
        callView: () => Navigator.push(context, 
          MaterialPageRoute(builder: (_) => const CardScreen())
        )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          children: <Widget>[
            // Barra de pesquisa
            SizedBox(height: height *0.06, child: SearchBars(width: width, height: height,)),

            SizedBox(height: 10,),
        
            // Cards
            Expanded(flex: 11, child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(10, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Cardinitial(),
                );
              }
              )
            ))
          ],
        ),
      ),
    );
  }
}