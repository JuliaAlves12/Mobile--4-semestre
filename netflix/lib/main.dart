import 'package:flutter/material.dart';
import 'package:netflix/pages/PagInicial.dart';

void main() {
  runApp(Netflix());
}

class Netflix extends StatelessWidget {
  Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Paginicial(),
    );
  }
}