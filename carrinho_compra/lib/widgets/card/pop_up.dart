import 'package:carrinho_compra/modal/item.dart';
import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

class PopUp{
  List<Item> itens;
  VoidCallback closed;
  String function;
  Item? item;

  PopUp({required this.itens, required this.closed, required this.function, this.item});
  
  void popUp(BuildContext context){
    final itemController = TextEditingController();
    final precoController = TextEditingController();
    final quantidadeController = TextEditingController();

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    showDialog(context: context, builder:(context){
      final width = MediaQuery.of(context).size.width;

    return AlertDialog(
      backgroundColor: color["backgroundCard"],
      content: Form(
        key: formKey,
        child: SingleChildScrollView( child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Item
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textPopUp(text: "Item"),
        
                Container(
                  width: width * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: color["backgroundScreen"]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextFormField(
                      controller: itemController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                )
              ],
            ),
        
        
            const SizedBox(height: 8),
        
            // Preço
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textPopUp(text: "Preço"),
        
                Container(
                  width: width * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: color["backgroundScreen"]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextFormField(
                      controller: precoController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixText: "R\$ "
                      ),
                    ),
                  ),
                )
              ],
            ),
        
        
            const SizedBox(height: 8),
        
            // Quantidade
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textPopUp(text: "Quantidade"),
        
                Container(
                  width: width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: color["backgroundScreen"]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextFormField(
                      controller: quantidadeController,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                )
              ],
            ),
        
        
            const SizedBox(height: 16),
        
            // botão
            Container(
              width: width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: color["backgroundScreen"]
              ),
            
              child: TextButton(
                // Verificar essa função
                onPressed: (){
                  if(function == 'add'){
                    final newItem = Item(
                      name: itemController.text, 
                      totalItens: int.parse(quantidadeController.text),
                      price: double.parse(precoController.text.replaceAll(",", ".")),
                    );

                    itens.add(newItem);

                    closed();
                  }
                  else if(function == "edit"){
                    if(itemController.text.isEmpty && quantidadeController.text.isEmpty && precoController.text.isEmpty){
                      closed();
                    } else{
                      itemController.text.isEmpty ? '' : item!.change(name: itemController.text);

                      quantidadeController.text.isEmpty ? '' : item!.change(totalItens: int.parse(quantidadeController.text));

                      precoController.text.isEmpty ? '' : item!.change(price: double.parse(precoController.text.replaceAll(",", ".")));

                      
                      closed();
                    }
                  }

                },
                child: Center(
                  child: Text(
                    "Salvar",
                    style: TextStyle(
                      color: color["verde"]
                    ),
                  ),
                ),
              ),
            )
          ],
        )),
      )
    );
  });
}
}
