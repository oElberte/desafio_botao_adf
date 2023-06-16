import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var material3 = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desafio Botão ADF',
      theme: ThemeData(
        colorScheme: ColorScheme.dark(
          background: Colors.grey[900]!,
        ),
        useMaterial3: material3,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Desafio Botão ADF'),
        ),
        body: Center(
          child: FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: material3 ? 10 : 15),
            ),
            child: const Text(
              'Tap Me',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => setState(() => material3 = !material3),
          label: Text(material3 ? 'Material 3' : 'Material 2'),
        ),
      ),
    );
  }
}
