import 'package:flutter/material.dart';

class Alerta extends StatelessWidget {
  const Alerta({
    super.key,
    required this.nombre,
  });

  final String nombre;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Container(
        color: Colors.black,
        width: 30,
        height: 30,
      ),
      content: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            Text(
              nombre,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 30),
                Text(
                  'Curso: ',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Edad: ',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Telefono: ',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
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
                  title: const Text('ENVIADO CON EXITO'),
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
          child: const Text('Enviar'),
        ),
      ],
    );
  }
}