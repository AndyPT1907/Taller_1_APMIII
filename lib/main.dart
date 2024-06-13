import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:taller1_flutter/screens/catalogo_peliculas.dart';
import 'package:taller1_flutter/screens/inicio.dart';
import 'package:taller1_flutter/screens/login.dart';
import 'package:taller1_flutter/screens/regitroScreen.dart';
import 'package:taller1_flutter/screens/reproduccion.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nesflis',
      home: HomeScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegistroScreen  (),
        '/home': (context) => HomeScreen(),
      },
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
        backgroundColor: Color.fromARGB(255, 4, 7, 10),
        selectedItemColor: Color.fromARGB(255, 212, 14, 14),
        unselectedItemColor: const Color.fromARGB(255, 12, 2, 2),
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
