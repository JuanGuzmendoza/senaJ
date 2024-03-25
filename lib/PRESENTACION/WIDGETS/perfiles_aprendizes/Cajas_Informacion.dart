import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sencvp/PRESENTACION/WIDGETS/perfiles_aprendizes/Alerta_Aprendiz.dart';

class AprendizCaja extends StatelessWidget {
  final String nombre;
  final String tiempo;
  final String imageUrl;
  const AprendizCaja({
    super.key,
    required this.nombre,
    required this.tiempo,
    required this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Alerta(nombre: nombre);
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          width: 400,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color.fromARGB(255, 255, 255, 255),
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 199, 199, 199).withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(1, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 56,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 64, 155, 67),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(1010.0),
                      child: CachedNetworkImage(
                          imageUrl:
                              imageUrl, // Ruta de la imagen dentro del proyecto
                          width: 40, // Ancho de la imagen
                          height: 40, // Alto de la imagen
                          fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nombre,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(tiempo),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
