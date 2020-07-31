import 'package:flutter/material.dart';

class PropertyIsRequired implements Exception{
  String nameClass;
  String property;


  /*
 * Custom Exception
 * parame {String} nameClass
 * parame {String} property
 */

  PropertyIsRequired({@required this.nameClass, @required this.property});

  @override
  String toString() {
    return 'Property For ${this.nameClass} = ${this.property} has not been set';
  }
}