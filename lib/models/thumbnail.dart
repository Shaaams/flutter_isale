import 'package:i_sale/contracts/base_model.dart';

class Thumbnail implements BaseModel{
  int width, height;
  String ext, url, hash, mime, name;
  dynamic path;
  double size;

  @override
  Thumbnail.fromJsonMap(Map<String,dynamic> map){
    this.width   = map['width'];
    this.height  = map['height'];
    this.ext     = map['ext'];
    this.url     = map['url'];
    this.hash    = map['hash'];
    this.mime    = map['mime'];
    this.name    = map['name'];
    this.path    = map['path'];
    this.size    = map['size'];
  }

  @override
  Map<String, dynamic> toMap() {
    // TODO: implement toMap
    throw UnimplementedError();
  }
}