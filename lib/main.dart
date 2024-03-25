import 'package:flutter/material.dart';
import 'package:sencvp/PRESENTACION/VISTAS/perfiles_aprendizes/Perfiles_Aprendiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: const Color.fromRGBO(71, 158, 30, 10)),
        home: const Perfiles_Aprendiz());
  }
}
