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
          Image.asset('images/img1.jpg', width: 100, height: 100),
          Image.asset('images/img2.jpg', width: 100, height: 100),
          Image.asset('images/img3.png', width: 100, height: 100),
        ],
      ),
    );
  }
}
