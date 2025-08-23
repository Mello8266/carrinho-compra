import 'package:carrinho_compra/config/hive_config.dart';
import 'package:carrinho_compra/view/initial_screen.dart';
import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await HiveConfig.start();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        hintColor: Colors.black,
        focusColor: Colors.black,
        scaffoldBackgroundColor: color["backgroundScreen"],
        primarySwatch: Colors.grey,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
          selectionColor: Colors.black,
          selectionHandleColor: Colors.grey,
        ),
      ),
      title: 'Carrinho de compras',
      home: const InitialScreen()
    );
  }
}