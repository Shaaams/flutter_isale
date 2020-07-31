import 'package:i_sale/contracts/base_model.dart';
import 'package:i_sale/models/image_formats.dart';

class Image implements BaseModel{
  int id, width, height;
  String name, alternativeText, caption, hash, ext, mime, url, provider;
  ImageFormats formats;
  double size;
  dynamic previewUrl;

  @override
  Image.fromJsonMap(Map<String,dynamic> map){
    this.id              = map['id'];
    this.name            = map['name'];
    this.alternativeText = map['alternativeText'];
    this.caption         = map['caption'];
    this.width           = map['width'];
    this.height          = map['height'];
    this.formats         = ImageFormats.fromJsonMap(map['formats']);
    this.hash            = map['hash'];
    this.ext             = map['ext'];
    this.mime            = map['mime'];
    this.url             = map['url'];
    this.provider        = map['provider'];
    this.size            = map['size'];
    this.previewUrl      = map['previewUrl'];

  }

  @override
  Map<String, dynamic> toMap() {
    // TODO: implement toMap
    throw UnimplementedError();
  }
}