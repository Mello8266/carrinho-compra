// ignore_for_file: must_be_immutable

import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

class FloatingButtonInitial extends StatelessWidget{
  late VoidCallback callView;

  FloatingButtonInitial({
    super.key, 
    required this.callView,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      width: 66,
      child: FloatingActionButton(
        onPressed:() => callView(),
        shape: const CircleBorder(),
        backgroundColor: color["marromEscuro"],
        child: const Icon(Icons.add_rounded, size: 55, color: Colors.white,),
      ),
    );
  }

}