// Pantalla con 3 fotos en columnas
import 'package:flutter/material.dart';

class PhotosColumnScreen extends StatelessWidget {
  const PhotosColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/photo1.png', width: 100, height: 100),
          Image.asset('assets/photo2.png', width: 100, height: 100),
          Image.asset('assets/photo3.png', width: 100, height: 100),
        ],
      ),
    );
  }
}