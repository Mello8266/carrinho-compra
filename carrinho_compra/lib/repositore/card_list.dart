// Lista de itens da tela inicial

import 'package:carrinho_compra/adapter/compra_adapter.dart';
import 'package:carrinho_compra/modal/compra.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

class CardList extends ChangeNotifier{
  List<Compra> list = [];
  late Box box;

  Future<void> startRepository() async{
    await openBox();
    await readData();
  }

  Future<void> openBox() async{
    Hive.registerAdapter(CompraHiveAdapter());
    box = await Hive.openBox('compra');
  }

  // Carregar a lista do JSON
  Future<void> readData() async{
    box.keys.forEach((compra) async{ 
      Compra c = await box.get('compras');
      list.add(c);
      notifyListeners();
    });
  }

  Future<void> addData(List<Compra> compras) async{
    openBox();

    compras.forEach((compra) {
      list.add(compra);
      box.put(compra.tittle, compra);
    });
    notifyListeners();
  }
}