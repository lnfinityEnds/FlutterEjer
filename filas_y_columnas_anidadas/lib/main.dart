import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo de filas y columnas anidadas'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildIconButton(Icons.phone, 'Llamar por teléfono'),
                  buildIconButton(Icons.email, 'Enviar mensaje'),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildIconButton(Icons.camera_alt, 'Instagram'),
                  buildIconButton(Icons.message, 'WhatsApp'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIconButton(IconData icon, String label) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
