import 'package:i_sale/contracts/base_model.dart';

class FeaturedImage implements BaseModel{
  int id, width, height ;
  String name, alternativeText, caption;

  @override
  FeaturedImage.fromJsonMap(Map<String,dynamic> map){
    this.id              = map['id'];
    this.name            = map['name'];
    this.alternativeText = map['alternativeText'];
    this.caption         = map['caption'];
    this.width           = map['width'];
    this.height          = map['height'];

  }

  @override
  Map<String, dynamic> toMap() {
    // TODO: implement toMap
    throw UnimplementedError();
  }

}