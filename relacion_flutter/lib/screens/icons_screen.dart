// Pantalla con 5 iconos
import 'package:flutter/material.dart';

class IconsScreen extends StatelessWidget {
  const IconsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home, size: 50),
          Icon(Icons.star, size: 50),
          Icon(Icons.settings, size: 50),
          Icon(Icons.phone, size: 50),
          Icon(Icons.camera_alt, size: 50),
        ],
      ),
    );
  }
}
