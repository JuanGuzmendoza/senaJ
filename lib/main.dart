import 'package:flutter/material.dart';
import 'package:sena_juan/estilos/vistas/Anuncios/Menu_funciones_Anuncios.dart';
import 'package:sena_juan/estilos/vistas/Menu_Anuncios.dart';

void main() {
  runApp(const  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



 @override
  Widget  build(BuildContext context){
  return  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Color.fromRGBO(	71, 158, 30,10)
    ),
    home: const AnunciosFuncion()
  );
 }
}
 