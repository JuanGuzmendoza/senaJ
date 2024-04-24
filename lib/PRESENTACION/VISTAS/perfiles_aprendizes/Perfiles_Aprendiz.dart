
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:sencvp/PRESENTACION/WIDGETS/perfiles_aprendizes/Cajas_Informacion.dart';
import 'package:sencvp/PRESENTACION/WIDGETS/perfiles_aprendizes/Button_Submit_CVC.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sencvp/service/firestore.dart';
  //firestore
  final FirestoreService fireStoreService = FirestoreService();
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
      body: StreamBuilder<QuerySnapshot>(
         stream: fireStoreService.getNotesStream(),
         builder: (context, snapshot) {
          // si hay informacion
          if (snapshot.hasData){
            List notesList = snapshot.data!.docs;

            //mostrar como lista
            return ListView.builder(
              itemCount: notesList.length,
              itemBuilder: (context, index){
                // tomar los documentos individuales
                DocumentSnapshot document = notesList[index];
                String docID =document.id;
                //tomar el txt de los documentos
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                String noteText = data['note'];
                //mostrar como lista
                return  ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        AprendizCaja(
                            nombre: noteText,
                            id: docID,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
            //si no hay datos
          } else {
            return const Text("No notes...");
          }
         },
      ),
      floatingActionButton: (BottonCV()),
    );
  }
}
