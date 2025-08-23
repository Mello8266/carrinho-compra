// Objeto da tela inical que carrega a lista 
class Compra{
  String tittle;
  String data;
  List itens;

  Compra({required this.tittle, required this.data, required this.itens});

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

  double tot(){
    double total1 = 0;

    for (var i in itens){
      total1 += i.price;
    }

    return total1;
  }
}