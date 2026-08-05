import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  String? email;
  String? senha;

  void carregarDados() async {
    dynamic banco = await SharedPreferences.getInstance();
    setState(() {
      email = banco.getString("email");
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}