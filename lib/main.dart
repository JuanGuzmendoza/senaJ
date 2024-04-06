import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sencvp/PRESENTACION/VISTAS/perfiles_aprendizes/Perfiles_Aprendiz.dart';
import 'package:sencvp/firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
