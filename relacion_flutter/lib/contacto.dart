// Pantalla con nombre y repositorio
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Tu Nombre y Apellidos",
            style: GoogleFonts.roboto(
              textStyle:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "https://github.com/tu-repositorio",
            style: GoogleFonts.lato(
              textStyle:
                  const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}
