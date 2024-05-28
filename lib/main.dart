import 'package:flutter/material.dart';
import 'package:flutter_yeni/Model/Patterns.dart';
import 'package:flutter_yeni/Model/kategori.dart';

import 'package:flutter_yeni/navigation.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Patterns> pattern = Patterns.patterns;
  final List<Kategori> kategoriler=Kategori.kategoriler;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Navigation(pattern, kategoriler), // Passing the pattern list to the HomePage
    );
  }
}

