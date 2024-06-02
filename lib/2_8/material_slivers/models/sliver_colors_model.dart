import 'dart:ui';
import 'package:flutter/material.dart';

class ColorsModel {
  final Color colors;

  ColorsModel({required this.colors});
}

List<ColorsModel> sliverColors = [
  ColorsModel(colors: Colors.red),
  ColorsModel(colors: Colors.black),
  ColorsModel(colors: Colors.blue),
  ColorsModel(colors: Colors.pink),
  ColorsModel(colors: Colors.orangeAccent),
  ColorsModel(colors: Colors.purple),
  ColorsModel(colors: Colors.brown),
  ColorsModel(colors: Colors.grey),
  ColorsModel(colors: Colors.lightGreen),
  ColorsModel(colors: Colors.yellow),
];
