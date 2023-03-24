

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  @override //sobreescrevendo o metodo
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateful')),
      body: Center(
        child: Text('$contador'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            increment, //passando a função como parametro, para executar seria increment()
        child: Icon(Icons.add),
      ),
    );
  }

  void increment() {
    setState((){   //função anonima
      contador++;
    }); //
   
    print(contador);
  }
}
