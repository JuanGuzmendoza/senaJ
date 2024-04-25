// ignore_for_file: avoid_print, non_constant_identifier_names, use_key_in_widget_constructors

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gallery_picker/gallery_picker.dart';
import 'package:sencvp/service/firestore.dart';

class BottonCV extends StatelessWidget {
  //imagenes
Future<File?> pickFile(BuildContext context) async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.image);
  if (result != null) {
    PlatformFile file = result.files.first;
    return File(file.path!);
  } else {
    print('No file selected');
    return null;
  }
}

  //firestore
  final FirestoreService fireStoreService = FirestoreService();
  //text controller
  final TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color.fromARGB(255, 195, 240, 196),
      onPressed: () async {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Container(
                alignment: Alignment.bottomLeft,
                width: 30,
                height: 30,
              ),
              content: SizedBox(
                width: 300,
                height: 300,
                child: Column(
                  children: [
                    const Text(
                      "Subir Hoja de vida",
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.green
                        ),
                        Positioned(
                          bottom: -10,
                          right: 0,
                          child: 
                        IconButton(
                            onPressed: () async {
                              //imagen
                              File? selectedImage = await pickFile(context);
                              if (selectedImage != null) {
                                print(selectedImage);
                              } else {
                                print('No file selected');
                              }
                            },
                            color: Colors.black,
                            icon: Icon(Icons.add_a_photo),
                          ),
                        )
                      ],
                    ),
                    TextField(
                      decoration: const InputDecoration(hintText: "Nombre"),
                      controller: textController,
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cerrar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    //boton crear
                    fireStoreService.addNote(textController.text);
                    //borrar texto
                    textController.clear();
                    Navigator.of(context).pop();
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Creado con exito'),
                          //boton cerrar ventana
                          content: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cerrar'),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('Subir'),
                ),
              ],
            );
          },
        );
      },
      child: const Icon(Icons.add_box),
    );
  }
}
