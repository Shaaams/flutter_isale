import 'dart:convert';
abstract class MainApi{
Map<String, String> headers ={
  'Accept' : 'application/json',
  'Content-Type' : 'application/json',
  //'authorization' : 'Basic ' + base64Encode(utf8.encode('$username:$password')),

};

static String  MAIN_API= 'https://infinite-savannah-82989.herokuapp.com';
String PRODUCTS_URL = MAIN_API + '/products';

}