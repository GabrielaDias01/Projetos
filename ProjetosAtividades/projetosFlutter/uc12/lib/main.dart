import 'package:flutter/material.dart';
import 'pages/exemplo_entrada_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Exemplo Entrada de Dados',

      theme: ThemeData(

        primarySwatch: Colors.indigo,
      ),

      home: const ExemploEntradaPage(),
    );
  }
}