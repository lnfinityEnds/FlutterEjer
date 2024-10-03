import 'package:flutter/material.dart';
import 'package:relacion_flutter/contacto.dart';
import 'package:relacion_flutter/icons_screen.dart';
import 'package:relacion_flutter/photos_column.dart';
import 'package:relacion_flutter/photos_rows.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _selectedDrawerIndex = 0;

  // Aquí definimos las pantallas para cada elemento del drawer
  Widget _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return NameScreen();  // Pantalla con nombre y repositorio
      case 1:
        return PhotosRowScreen();  // Pantalla con 3 fotos en fila
      case 2:
        return PhotosColumnScreen();  // Pantalla con 3 fotos en columnas
      case 3:
        return const IconsScreen();  // Pantalla con 5 iconos
      default:
        return const Text("Pantalla no encontrada");
    }
  }

  _onSelectItem(int index) {
    setState(() {
      _selectedDrawerIndex = index;
    });
    Navigator.of(context).pop(); // Cierra el drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App con Drawer"),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text("Menú"),
            ),
            ListTile(
              title: const Text("Nombre y Repositorio"),
              onTap: () => _onSelectItem(0),
            ),
            ListTile(
              title: const Text("3 Fotos en Fila"),
              onTap: () => _onSelectItem(1),
            ),
            ListTile(
              title: const Text("3 Fotos en Columnas"),
              onTap: () => _onSelectItem(2),
            ),
            ListTile(
              title: const Text("Mostrar 5 Iconos"),
              onTap: () => _onSelectItem(3),
            ),
          ],
        ),
      ),
    );
  }
}
