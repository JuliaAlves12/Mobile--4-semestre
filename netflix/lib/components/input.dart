import 'package:flutter/material.dart';

class InputComponent extends StatelessWidget {
  final String titulo;
  final IconData icone;
  final TextEditingController controller;

  InputComponent({
    super.key, required this.titulo, required this.icone, required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(icone, color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none
            )
          ),
        )
      ],
    );
  }
}