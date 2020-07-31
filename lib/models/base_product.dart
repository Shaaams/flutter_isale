import 'package:i_sale/contracts/base_model.dart';
import 'package:i_sale/exceptions/exceptions.dart';
import 'package:i_sale/models/category.dart';
import 'package:i_sale/models/featured_image.dart';
import 'package:i_sale/models/image.dart';

class BaseProduct implements BaseModel{
  int id, price;
  String name, description;
  bool is_featured;
  //double discount;
  //Category category;
  FeaturedImage featuredImage;
  List<Image> gallery;

  @override
  BaseProduct.fromJsonMap(Map<String,dynamic> map){
    this.id            = map['id'];
    this.name          = map['name'];
    this.description   = map['description'];
    this.is_featured   = map['is_featured'];
    //this.discount      = map['discount'];
//    if(map['category'] == null){
//      throw PropertyIsRequired(nameClass: 'BaseProduct', property: map['category']);
//    }
   // this.category      = Category.fromJsonMap(map['category']);
    this.featuredImage = FeaturedImage.fromJsonMap(map['featuredImage']);
    this.gallery = [];
    if(map['gallery'] != null){
      for(var item in map['gallery']){
        gallery.add(Image.fromJsonMap(map[item]));
      }

    }

  }

  @override
  Map<String, dynamic> toMap() {
    // TODO: implement toMap
    throw UnimplementedError();
  }

}