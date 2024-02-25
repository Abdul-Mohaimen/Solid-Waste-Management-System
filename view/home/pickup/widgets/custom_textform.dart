import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  const CustomTextField({super.key, required this.hintText});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController _controller = TextEditingController();
  
   @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

   @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.all(20),
      child: TextField(
        controller: _controller,
        style: const TextStyle(fontSize: 16, color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white, // Set background color
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none, // Remove border
          ),
          hintText: widget.hintText, // Set hint text
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}