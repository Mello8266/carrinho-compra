import 'package:flutter/material.dart';

class PopupAppbar{
  TextEditingController controllAppbar;

  PopupAppbar({
    required this.controllAppbar,
  });

  void popupAppbar(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Mudar Título da AppBar'),
          content: TextField(
            controller: controllAppbar,
            decoration: const InputDecoration(
              hintText: 'Digite o novo título',
              border: OutlineInputBorder(),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                
                Navigator.of(context).pop();
              },
              child: const Text('Salvar'),
            ),
          ],
        );
      },
    );
  }
}