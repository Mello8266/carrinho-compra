class CardScreenControl{

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


}