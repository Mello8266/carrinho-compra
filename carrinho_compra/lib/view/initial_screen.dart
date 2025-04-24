import 'package:carrinho_compra/view/card_screen.dart';
import 'package:carrinho_compra/widgets/floating_button.dart';
import 'package:carrinho_compra/widgets/search_bar.dart';
import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

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
             Expanded(
              flex: 0,
              child: SearchBars(width: width, height: height,)
            ),
        
            // Cards
            Expanded(flex: 4, child: ListView())
          ],
        ),
      ),
    );
  }
}