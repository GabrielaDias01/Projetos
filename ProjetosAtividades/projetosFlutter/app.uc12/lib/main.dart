import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import '/pages/cadastro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Cadastro e login',

      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),

      home: const LoginPage(),
    );
  }
}