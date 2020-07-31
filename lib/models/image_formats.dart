import 'package:i_sale/contracts/base_model.dart';
import 'package:i_sale/models/thumbnail.dart';

class ImageFormats implements BaseModel{

  Thumbnail small;
  Thumbnail medium;
  Thumbnail thumbnail;

  @override
  ImageFormats.fromJsonMap(Map<String,dynamic> map){
    this.small      = Thumbnail.fromJsonMap(map['small']);
    this.medium     = Thumbnail.fromJsonMap(map['medium']);
    this.thumbnail  = Thumbnail.fromJsonMap(map['thumbnail']);
  }

  @override
  Map<String, dynamic> toMap() {
    // TODO: implement toMap
    throw UnimplementedError();
  }
}