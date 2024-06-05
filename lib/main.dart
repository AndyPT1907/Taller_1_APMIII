import 'package:flutter/material.dart';
import 'package:taller1_flutter/screens/catalogo_peliculas.dart';
import 'package:taller1_flutter/screens/inicio.dart';
import 'package:taller1_flutter/screens/login.dart';
import 'package:taller1_flutter/screens/reproduccion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Movie App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  
 
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    InicioScreen(),
    LoginScreen(),
    CatalogoScreen(),
    ReproduccionScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        backgroundColor: Color.fromARGB(255, 4, 7, 10), // Cambia el color de fondo de la barra de navegación
        selectedItemColor: Color.fromARGB(255, 212, 14, 14), // Cambia el color de los íconos y textos seleccionados
        unselectedItemColor: const Color.fromARGB(255, 12, 2, 2), // Cambia el color de los íconos y textos no seleccionados
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Bienvenida',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Inicio de Sesión',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Catálogo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_fill),
            label: 'Reproducción',
          ),
        ],
      ),
    );
  }
}
  