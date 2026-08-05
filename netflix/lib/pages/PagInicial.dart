import 'package:flutter/material.dart';
import 'package:netflix/components/input.dart';
import 'package:netflix/pages/TelaHome.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Paginicial extends StatefulWidget {
  const Paginicial({super.key});

  @override
  State<Paginicial> createState() => _PaginicialState();
}

class _PaginicialState extends State<Paginicial> {
  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();
  /* TextEditingController é uma variável que "observa" e grava o que você digita */
  
  // Função para salvar o dados dentro do banco Interno do Celular
  void SalvarDados() async {
    //abrir uma instância do banco
    dynamic banco = await SharedPreferences.getInstance();
    /* Aguarda o banco salvar dentro do celular no campo Email, o email que o usuário digitou */
    await banco.setString("email", email.text);
  }

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
              InputComponent(titulo: 'Email', icone: Icons.email, controller: email),
              SizedBox(height: 24),
              InputComponent(titulo: 'Password', icone: Icons.key, controller: senha),
              SizedBox(height: 32),
              TextButton(onPressed: () {
                SalvarDados();
                Navigator.push(context, MaterialPageRoute(builder: (context) => TelaHome()));
              }, child: Text("Login")),
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