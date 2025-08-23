// Item individual
class Item{
  // Dados e seu index
  String name;
  double price;
  int totalItens;

  // Construtor
  Item({
    required this.name,
    required this.totalItens,
    required this.price,
  });

  // Calcular preço
  double priceTotal(){
    return totalItens * price;
  }

  // Metodo para mudar os dados
  void change({String? name, int? totalItens, double? price}){
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