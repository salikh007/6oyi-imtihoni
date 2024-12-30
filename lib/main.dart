import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Gradient Text'),
        ),
        body: Center(
          child: ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [Colors.blue, Colors.purple, Colors.pink],
              ).createShader(bounds);
            },
            child: Text(
              'Flutter',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Textning o‘z rangi
              ),
            ),
          ),
        ),
      ),
    );
  }
}
