import 'package:flutter/material.dart';
import 'package:carrinho_compra/widgets/style.dart';

class PopupAppbar{
  TextEditingController controllAppbar;

  PopupAppbar({
    required this.controllAppbar,
  });

  void popupAppbar(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: AlertDialog(
            content: TextField(
              controller: controllAppbar,
              decoration: const InputDecoration(
                hintText: 'Digite o novo título',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Cancelar',
                  style: TextStyle(
                    color: color["marromEscuro"]
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Salvar',
                  style: TextStyle(
                    color: color["verde"]
                  ),
                
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}