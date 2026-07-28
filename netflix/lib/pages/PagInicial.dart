import 'package:flutter/material.dart';

class Paginicial extends StatelessWidget {
  const Paginicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF141414),
      body: SafeArea(
        child: Center(
          child: Image.asset(
            'assets/images/netflix_certo.jpg',
            width: 200,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
