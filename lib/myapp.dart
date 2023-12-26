import 'package:barber/controllers/entrar.dart';
import 'package:barber/views/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:barber/controllers/cadastro.dart';
import 'main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP BARBER',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
         
      ),
      
      debugShowCheckedModeBanner: false,

      initialRoute: '/',

      routes: {
        '/' : (context) => Home(title: 'principal'),
        '/cadastro' :(context) => Cadastro(),
        '/entrar' :(context) => Entrar(title: 'Entrar',),
      },
    );
  }
}