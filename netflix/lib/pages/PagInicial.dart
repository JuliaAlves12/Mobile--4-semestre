import 'package:flutter/material.dart';
import 'package:netflix/components/botao.dart';
import 'package:netflix/components/input.dart';

class PagInicial extends StatelessWidget {
  PagInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141414),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            children: [
              SizedBox(height: 240),
              Center(
                child: Image.asset(
                  'assets/images/netflix_certo.jpg',
                  width: 270,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 32),
              InputComponent(titulo: 'Email', icone: Icons.email),
              SizedBox(height: 24),
              InputComponent(titulo: 'Password', icone: Icons.key),
              SizedBox(height: 32),
              Botao(texto: 'Sign In'),
              SizedBox(height: 52),
              Text.rich(
                TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ]
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
