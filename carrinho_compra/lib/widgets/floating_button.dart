// ignore_for_file: must_be_immutable

import 'package:carrinho_compra/widgets/style.dart';
import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget{
  late VoidCallback callView;

  FloatingButton({
    super.key, 
    required this.callView,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed:() => callView(),
      shape: const CircleBorder(),
      backgroundColor: color["marromEscuro"],
      child: const Icon(Icons.add_rounded, size: 40, color: Colors.white,),
    );
  }

}