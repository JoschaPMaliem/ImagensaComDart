import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _imagePath = 'assets/image1.jpg'; // Initial image path

  void _mudarImagem(String novaImagem) {
    setState(() {
      _imagePath = novaImagem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exercicio'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
              Center(
                child: Image.asset(
                  _imagePath,
                  width: 300,
                  height: 300,
                ),
              ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _mudarImagem('assets/image1.jpg'),
                  child: Text('Imagem 1'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _mudarImagem('assets/image2.jpg'),
                  child: Text('Imagem 2'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _mudarImagem('assets/image3.jpg'),
                  child: Text('Imagem 3'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}