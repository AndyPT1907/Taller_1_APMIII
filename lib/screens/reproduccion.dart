import 'package:flutter/material.dart';

class ReproduccionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reproducción de Películas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Reproduciendo Película...'),
            
            Icon(
              Icons.movie,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
