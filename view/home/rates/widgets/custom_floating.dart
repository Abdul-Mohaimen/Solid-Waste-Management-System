import 'package:flutter/material.dart';
import 'package:scrapo/view/home/home_screen.dart';

class CustomFloating extends StatelessWidget {
  const CustomFloating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
      },
      backgroundColor: const Color(0xff0BAB7F),
      foregroundColor: Colors.white,
      shape: const CircleBorder(),
      child: const Icon(Icons.storefront_outlined),
    );
  }
}
