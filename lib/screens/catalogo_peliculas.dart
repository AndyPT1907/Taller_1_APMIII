import 'package:flutter/material.dart';

class CatalogoScreen extends StatelessWidget {
  const CatalogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Películas'),
        backgroundColor: Colors.blue, // Cambia el color del AppBar
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0), 
        children: [
          ListTile(
            title: const Text(
              'Película 1',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
            ),
            trailing: const Icon(Icons.play_arrow, color: Colors.blue), 
            tileColor: Colors.grey[200], 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), 
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), // Añade padding dentro del ListTile
            onTap: () {
              Navigator.pushNamed(context, '/player');
            },
          ),
          const SizedBox(height: 10), 
          ListTile(
            title: const Text(
              'Película 2',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Estilo del texto del título
            ),
            trailing: const Icon(Icons.play_arrow, color: Colors.blue), // Añade un icono al final de la fila
            tileColor: Colors.grey[200], // Cambia el color de fondo del ListTile
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Añade bordes redondeados
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), // Añade padding dentro del ListTile
            onTap: () {
              Navigator.pushNamed(context, '/player');
            },
          ),
          // Agrega más películas aquí
        ],
      ),
    );
  }
}
