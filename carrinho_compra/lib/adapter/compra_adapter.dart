import 'package:carrinho_compra/modal/compra.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CompraHiveAdapter extends TypeAdapter<Compra>{
  @override
  final typeId = 0;

  @override
  Compra read(BinaryReader reader){
    return Compra(
      tittle: reader.readString(), 
      data: reader.readString(), 
      itens: reader.readList()
    );
  } 

  @override
  void write(BinaryWriter writer, Compra obj){
    writer.writeString(obj.tittle);
    writer.writeString(obj.data);
    writer.writeList(obj.itens);
  }
} 