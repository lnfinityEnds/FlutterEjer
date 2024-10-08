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
          Image.asset('images/img1.jpg', width: 100, height: 100),
          Image.asset('images/img2.jpg', width: 100, height: 100),
          Image.asset('images/img3.png', width: 100, height: 100),
        ],
      ),
    );
  }
}
