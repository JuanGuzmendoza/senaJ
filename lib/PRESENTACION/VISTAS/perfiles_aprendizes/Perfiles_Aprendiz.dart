import 'package:flutter/material.dart';
import 'package:sencvp/PRESENTACION/WIDGETS/perfiles_aprendizes/Cajas_Informacion.dart';
import 'package:sencvp/PRESENTACION/WIDGETS/perfiles_aprendizes/Button_Submit_CVC.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Perfiles_Aprendiz extends StatefulWidget {
  const Perfiles_Aprendiz({Key? key}) : super(key: key);

  @override
  State<Perfiles_Aprendiz> createState() => _Perfiles_AprendizState();
}

class _Perfiles_AprendizState extends State<Perfiles_Aprendiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CachedNetworkImage(
                imageUrl:
                    "assets/icono.png", // Ruta de la imagen dentro del proyecto
                width: 40, // Ancho de la imagen
                height: 40, // Alto de la imagen
                fit: BoxFit.cover),
          ],
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: const SingleChildScrollView(
            child: Column(
              children: [
                AprendizCaja(
                  nombre: "Aprendiz Sena 1",
                  tiempo: 'Hace 3 Dias',
                  imageUrl:
                      'https://media-bog2-2.cdn.whatsapp.net/v/t61.24694-24/395056401_1829842057476835_8032769912893741143_n.jpg?ccb=11-4&oh=01_AdRZ7GBmYQ31wKtCih4im09jZKrszgBL6Dl-b7wE4SP11w&oe=660EC737&_nc_sid=e6ed6c&_nc_cat=109',
                ),
                AprendizCaja(
                    nombre: "Aprendiz Sena 2",
                    tiempo: 'Hace 3 Dias',
                    imageUrl:
                        'https://media-bog2-2.cdn.whatsapp.net/v/t61.24694-24/390073109_1507241723392349_7736042345332727708_n.jpg?ccb=11-4&oh=01_AdQPPXp8Lic4IYAt0NCN2Bw40kClnOiZzg2IuSjyBN_ugQ&oe=660A1387&_nc_sid=e6ed6c&_nc_cat=105'),
                AprendizCaja(
                    nombre: "Aprendiz Sena 3",
                    tiempo: 'Hace 3 Dias',
                    imageUrl:
                        'https://media-bog2-2.cdn.whatsapp.net/v/t61.24694-24/424425054_256306870864408_4284654772809134099_n.jpg?ccb=11-4&oh=01_AdSzIY-ourbjAI5psRKFsF3nfPHBdyElQQt5XZqvMBo9gg&oe=6609FD43&_nc_sid=e6ed6c&_nc_cat=107')
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: (BottonCV()),
    );
  }
}
