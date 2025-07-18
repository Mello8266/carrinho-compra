import 'package:carrinho_compra/modal/item.dart';

class CardScreenControl{
  double calcPriceTotal({required List<Item> list}){
    double total = 0;

    for(var i in list){
      total += i.priceTotal();
    }

    return total;
  }


  // formatar data
  String formatDate(){
    String day = DateTime.now().day.toString();
    String month = DateTime.now().month.toString();
    String year = DateTime.now().year.toString();

    if (month.length < 2){
      month = '0$month';
    }

    String format = '$day/$month/$year';

    return format;
  }

  // Formatar num
  String formatNum({required double n}){    
    String f = n.toStringAsFixed(2).replaceAll('.', ',');
    return f;
  }


}