

import 'package:flutter/material.dart';
import 'package:i_sale/api/products/products_api.dart';
import 'package:i_sale/controllers/product_controller.dart';
import 'package:i_sale/models/base_product.dart';

class AllProducts extends StatefulWidget {
  @override
  _AllProductsState createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  ProductController _productController = ProductController(ProductApi());
  Future<List<BaseProduct>> _futureProducts;
  
  @override
  void initState() {
    super.initState();
    _futureProducts = _productController.getAll();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All-Products'),
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: _drawHomeScreen(context),
      ),
    );
  }

 Widget _drawHomeScreen(BuildContext context) {
    return FutureBuilder(
        future: _futureProducts,
        builder: (BuildContext context, AsyncSnapshot<List<BaseProduct>> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.active:
              return _loadingWidget(context);
              break;
            case ConnectionState.none:
              return _errorWidget(context, msg: "General Error None");
              break;
            case ConnectionState.done:
              if (snapshot.hasError) {
                 print(snapshot.error.toString());
                return _errorWidget(context, msg: snapshot.error.toString());
              } else if (!snapshot.hasData) {
                return _errorWidget(context, msg: "No Data Has Return !! ");
              }
              return ListView(
                children: <Widget>[
                  ... _productsList(context, snapshot.data),
                ],
              );
              break;
            default:
              return _errorWidget(context, msg: "General Error Default");
              break;
          }
        },
    );
 }

  Widget _loadingWidget(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _errorWidget(BuildContext context, {String msg}) {
    return Center(
      child: Text(msg, style: TextStyle(
        color: Colors.red,
      ),),
    );
  }

 List<Widget> _productsList(BuildContext context, List<BaseProduct> products) {
  return products.map((product){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: double.infinity,
            child: Card(
              child: Image(
                fit:product.featuredImage != null ? BoxFit.cover : BoxFit.contain,
                image:product.featuredImage != null ? NetworkImage(product.featuredImage.toString()):
                ExactAssetImage('assets/images/placeholder0.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }).toList();

  }
}
