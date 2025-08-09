class ControllView{
  // formatar data
  String formatDate(){
    String day = DateTime.now().day.toString();
    String month = DateTime.now().month.toString();
    String year = DateTime.now().year.toString();

    if(day.length < 2){
      day = '0$day';
    }

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