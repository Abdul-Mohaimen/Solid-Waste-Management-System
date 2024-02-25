import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const CustomTextField({super.key, 
    required this.hintText,
    required this.controller,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.black), // Text color
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white, // Background color
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey), // Hint text color
        border: OutlineInputBorder(
          borderSide: BorderSide.none, // Remove border
          borderRadius: BorderRadius.circular(10.0),
        ),
        contentPadding: const EdgeInsets.all(16.0),
      ),
    );
  }
}
