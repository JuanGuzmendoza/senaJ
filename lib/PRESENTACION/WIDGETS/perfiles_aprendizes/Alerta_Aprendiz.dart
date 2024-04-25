import 'package:flutter/material.dart';
import 'package:sencvp/service/firestore.dart';


class Alerta extends StatelessWidget {
  final String id ;
   Alerta({
    super.key,
    required this.nombre, required this.id,
  });
   final FirestoreService fireStoreService = FirestoreService();
  //text controller
  final TextEditingController textController = TextEditingController();
  final String nombre;

  @override
  Widget build(BuildContext context) {
    void form(){
        Navigator.of(context).pop();
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
                      "Actualizar hoja de vida",
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
                    fireStoreService.updateNote(id,textController.text);
                    //borrar texto
                    textController.clear();
                    Navigator.of(context).pop();
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Actualizado con exito'),
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
}
    return AlertDialog(
      title: IconButton(
          onPressed: () => form(), icon: const Icon(Icons.settings)
        
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
             Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 30),
                Text(
                  'Id: ${id}',
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Edad: ',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
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
