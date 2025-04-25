import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

class PopUp{
  
  static void popUp(BuildContext context){


    showDialog(context: context, builder:(context){
      final width = MediaQuery.of(context).size.width;
      final height = MediaQuery.of(context).size.height;

      return AlertDialog(
        backgroundColor: color["backgroundCard"],
          content: SingleChildScrollView( child: Column(
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
                    child: TextFormField(
                      
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
                    child: TextFormField(
                      
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
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
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
                  onPressed: (){},
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
          ))
      );
    });

  }
}
