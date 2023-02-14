import 'package:flutter/material.dart';
import 'package:mausam/pages/home.dart';
import 'package:mausam/pages/loading.dart';
import 'package:mausam/pages/location.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/":(context) => Loading(),
      "/home":(context) => Home(),
    },
  ));
}


