import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';

const pColor = Color.fromRGBO(64, 67, 222, 1);
const sColor = Color.fromARGB(255, 151, 150, 150);
class HttpException implements Exception {
  final String message;
  HttpException(this.message);
  @override
  String toString() {
    // TODO: implement toString

    return message;
    // return super.toString(); /
  }
  
}
