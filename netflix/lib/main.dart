import 'package:flutter/material.dart';
import 'package:netflix/pages/PagInicial.dart';

void main() {
  runApp(const Netflix());
}

class Netflix extends StatelessWidget {
  const Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Paginicial(),
    );
  }
}