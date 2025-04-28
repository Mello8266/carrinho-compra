import 'package:carrinho_compra/modal/item.dart';

// Objeto da tela inical que carrega a lista 
class CardCarrinho{
  String? title;
  List<Item> itens;
  late String data = formatDate();

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

  // Mudar essa variável para metodo
  double? total;

  double tot(){
    double total1 = 0;

    for (var i in itens){
      total1 += i.price;
    }

    return total1;
  }

  CardCarrinho({this.title, this.total, required this.itens}){
    title ??= 'Compra de $data';
  }
}