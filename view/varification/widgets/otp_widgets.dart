import 'package:flutter/material.dart';

class OtpInputFields extends StatefulWidget {
  const OtpInputFields({super.key});

  @override
  _OtpInputFieldsState createState() => _OtpInputFieldsState();
}

class _OtpInputFieldsState extends State<OtpInputFields> {
  List<TextEditingController> controllers = List.generate(4, (_) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        4,
        (index) => SizedBox(
          width: 80,
          height: 80,
          child: TextField(
            controller: controllers[index],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 20),
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.grey),
              ),
            ),
            onChanged: (value) {
              // You can perform actions when the OTP field changes
            },
          ),
        ),
      ),
    );
  }
}