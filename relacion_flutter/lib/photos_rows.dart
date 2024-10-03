// Pantalla con 3 fotos en fila
import 'package:flutter/material.dart';

class PhotosRowScreen extends StatelessWidget {
  const PhotosRowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
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