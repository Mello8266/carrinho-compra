// Item individual

class Item{
  String name;
  int totalItens;
  double price;

  Item({
    required this.name,
    required this.totalItens,
    required this.price,
  });

  double priceTotal(){
    return totalItens * price;
  }

  void change(String? name, int? totalItens, double? price){
    if(name != null){
      this.name = name;
    }
    if(totalItens != null){
      this.totalItens = totalItens;
    }
    if(price != null){
      this.price = price;
    }
  }
}