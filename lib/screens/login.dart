import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de Sesión'),
        backgroundColor: Colors.blue, 
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Usuario',
                  labelStyle: TextStyle(color: Colors.blue), 
                  border: OutlineInputBorder(), 
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue), 
                  ),
                ),
              ),
              const SizedBox(height: 20), 
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  labelStyle: TextStyle(color: Colors.blue), 
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue), 
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20), 
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/catalog');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, 
                  foregroundColor: Colors.white, 
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15), 
                  textStyle: const TextStyle(fontSize: 16), 
                ),
                child: Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
