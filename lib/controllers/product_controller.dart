import 'package:i_sale/api/api_interface.dart';
import 'package:i_sale/contracts/controller.dart';
import 'package:i_sale/models/base_product.dart';

class ProductController implements Controller{
  ApiInterface productApi;

  ProductController(this.productApi);
  
  @override
  Future<List<BaseProduct>> getAll({int page}) async{
    var data = await this.productApi.getAll();
    
    List<BaseProduct> products = [];
    
    for (var item in data){
      products.add(BaseProduct.fromJsonMap(item));
    }
    return products;
  }
  

}