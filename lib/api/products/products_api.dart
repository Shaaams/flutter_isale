import 'dart:convert';
import 'package:i_sale/api/api_interface.dart';
import 'package:i_sale/api/main_api.dart';
import 'package:http/http.dart' as http;

class ProductApi extends MainApi implements ApiInterface{
  @override
  Future<List<dynamic>> getAll({int page}) async{
    http.Response response = await http.get(PRODUCTS_URL, headers: headers);
    print(response.body);
    print(response.statusCode);
    switch(response.statusCode){
      case 401:
        throw Exception('Basic Auth has failed');
        break;
      case 200:
        return jsonDecode(response.body);
        break;
      default:
        throw Exception('No data received');
        break;
    }
  }

  @override
  Future getModel(int pa) {
    // TODO: implement getModel
    throw UnimplementedError();
  }

}