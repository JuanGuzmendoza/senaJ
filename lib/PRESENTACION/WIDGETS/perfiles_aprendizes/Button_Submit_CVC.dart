import 'package:flutter/material.dart';

class BottonCV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color.fromARGB(255, 195, 240, 196),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Container(
                alignment: Alignment.bottomLeft,
                width: 30,
                height: 30,
              ),
              content: const SizedBox(
                width: 300,
                height: 300,
                child: Column(
                  children: [
                    Text(
                      "Subir Hoja de vida",
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )
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
                    Navigator.of(context).pop();
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Creado con exito'),
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
