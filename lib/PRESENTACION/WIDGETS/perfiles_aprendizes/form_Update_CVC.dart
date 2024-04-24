import 'package:flutter/material.dart';
import 'package:sencvp/service/firestore.dart';

class form_Update extends StatelessWidget {
  final String id;
   form_Update({super.key, required this.id});
  final FirestoreService fireStoreService = FirestoreService();
  //text controller
  final TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
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
                    TextField(
                      controller:textController,
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
            );();
  }
}