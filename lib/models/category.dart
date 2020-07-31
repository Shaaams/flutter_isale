import 'package:i_sale/contracts/base_model.dart';
import 'package:i_sale/models/image.dart';

class Category implements BaseModel{
  int id;
  String name;
  Image image;

  @override
  Category.fromJsonMap(Map<String,dynamic> map){
    this.id    = map['id'];
    this.name  = map['name'];
    this.image = Image.fromJsonMap(map['image']);
  }

  @override
  Map<String, dynamic> toMap() {
    // TODO: implement toMap
    throw UnimplementedError();
  }

}