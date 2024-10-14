import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // 'super.key' şeklinde güncellendi

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Renk Değiştirme Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key}); // 'super.key' şeklinde güncellendi

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _backgroundColor = Colors.yellow;

  void _changeBackgroundColor() {
    setState(() {
      if (_backgroundColor == Colors.yellow) {
        _backgroundColor = Colors.blue;
      } else {
        _backgroundColor = Colors.yellow;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: const Text('Renk Değiştirme Uygulaması'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _changeBackgroundColor,
          child: const Text('Rengi Değiştir'),
        ),
      ),
    );
  }
}
