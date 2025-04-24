import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchBars extends StatelessWidget{
  double width;
  double height;

  SearchBars({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color["backgroundCard"],
        borderRadius: BorderRadius.circular(16)
      ),
      child: TextFormField(
        decoration: InputDecoration(
          // Icons
          prefixIcon: const Icon(Icons.search),
          suffixIcon: IconButton(
            onPressed: () => (),
            icon: const Icon(Icons.clear_rounded),
          ),
        
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.black)
          )
        ),
        
          
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}