import 'package:carrinho_compra/view/initial_screen.dart';
import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: color["backgroundScreen"]
      ),
      title: 'Carrinho de compras',
      home: const InitialScreen()
    );
  }
}