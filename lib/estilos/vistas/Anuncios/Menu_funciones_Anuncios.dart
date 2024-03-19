
import 'package:flutter/material.dart';

class AnunciosFuncion extends StatefulWidget {
  const AnunciosFuncion({Key? key}) : super(key: key);

  @override
  State<AnunciosFuncion> createState() => _AnunciosFuncionState();
}

class _AnunciosFuncionState extends State<AnunciosFuncion> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Image.network('assets/icono.png'),
          onPressed: () {},
        ),
      ),
      body: Center(
        
        child: ScrollConfiguration(
             behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: const SingleChildScrollView(
             
            child: Column(
              children: [
                  AprendizCaja(
                  nombre: "Juan Guzman",
                  tiempo: 'Hace 3 Dias',
                  imageUrl:
                      "data:image/jpeg;base64,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",
                ),
                AprendizCaja(
                  nombre: "Narvaez orellano",
                  tiempo: 'Hace 1 dias',
                  imageUrl:
                      "https://media-bog2-1.cdn.whatsapp.net/v/t61.24694-24/390073109_1507241723392349_7736042345332727708_n.jpg?ccb=11-4&oh=01_AdTMrADeV_Zu0nCp29VrtlxEHWc3m9SyxL9i4hJzRdmM0A&oe=65FEDEC7&_nc_sid=e6ed6c&_nc_cat=105",
                ),
                AprendizCaja(
                  nombre: "jorge manotas",
                  tiempo: 'Hace 2 dias',
                  imageUrl:
                      'https://media-bog2-1.cdn.whatsapp.net/v/t61.24694-24/422422468_350829564426021_584730823223991959_n.jpg?ccb=11-4&oh=01_AdSWqJ1in0Pw4EQQ4nrNMvi_Rp_rpg6HRMIyoDKyacKQ6A&oe=65FF3CF8&_nc_sid=e6ed6c&_nc_cat=109',
                ),  AprendizCaja(
                  nombre: "Juan Guzman",
                  tiempo: 'Hace 3 Dias',
                  imageUrl:
                      "data:image/jpeg;base64,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",
                ),
                AprendizCaja(
                  nombre: "Narvaez orellano",
                  tiempo: 'Hace 1 dias',
                  imageUrl:
                      "https://media-bog2-1.cdn.whatsapp.net/v/t61.24694-24/390073109_1507241723392349_7736042345332727708_n.jpg?ccb=11-4&oh=01_AdTMrADeV_Zu0nCp29VrtlxEHWc3m9SyxL9i4hJzRdmM0A&oe=65FEDEC7&_nc_sid=e6ed6c&_nc_cat=105",
                ),
                AprendizCaja(
                  nombre: "jorge manotas",
                  tiempo: 'Hace 2 dias',
                  imageUrl:
                      'https://media-bog2-1.cdn.whatsapp.net/v/t61.24694-24/422422468_350829564426021_584730823223991959_n.jpg?ccb=11-4&oh=01_AdSWqJ1in0Pw4EQQ4nrNMvi_Rp_rpg6HRMIyoDKyacKQ6A&oe=65FF3CF8&_nc_sid=e6ed6c&_nc_cat=109',
                ),
                AprendizCaja(
                  nombre: "Juan Guzman",
                  tiempo: 'Hace 3 Dias',
                  imageUrl:
                      "data:image/jpeg;base64,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",
                ),
                AprendizCaja(
                  nombre: "Narvaez orellano",
                  tiempo: 'Hace 1 dias',
                  imageUrl:
                      "https://media-bog2-1.cdn.whatsapp.net/v/t61.24694-24/390073109_1507241723392349_7736042345332727708_n.jpg?ccb=11-4&oh=01_AdTMrADeV_Zu0nCp29VrtlxEHWc3m9SyxL9i4hJzRdmM0A&oe=65FEDEC7&_nc_sid=e6ed6c&_nc_cat=105",
                ),
                AprendizCaja(
                  nombre: "jorge manotas",
                  tiempo: 'Hace 2 dias',
                  imageUrl:
                      'https://media-bog2-1.cdn.whatsapp.net/v/t61.24694-24/422422468_350829564426021_584730823223991959_n.jpg?ccb=11-4&oh=01_AdSWqJ1in0Pw4EQQ4nrNMvi_Rp_rpg6HRMIyoDKyacKQ6A&oe=65FF3CF8&_nc_sid=e6ed6c&_nc_cat=109',
                ),
                AprendizCaja(
                  nombre: "Juan Ucros",
                  tiempo: "Hace 5 dias",
                  imageUrl:
                      'https://media-bog2-1.cdn.whatsapp.net/v/t61.24694-24/427984318_1448300532784514_1239689403133666850_n.jpg?ccb=11-4&oh=01_AdSLnBIYENyZSdCiSwUa8UHSwL-WI4iCCqm2GllxP68XCA&oe=65FF0E56&_nc_sid=e6ed6c&_nc_cat=100',
                ),
                      AprendizCaja(
                  nombre: "Juan Guzman",
                  tiempo: 'Hace 3 Dias',
                  imageUrl:
                      "data:image/jpeg;base64,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",
                ),
            
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 195, 240, 196),
        onPressed: () {
          showDialog(
            
                   context: context,
          builder: (BuildContext context){
            return  AlertDialog(
            
 title:Container(
  
                alignment: Alignment.bottomLeft,
                width: 30,
                height: 30,
               child: Image.network('assets/icono.png') ,

              ),
              content:  const SizedBox(
                    width: 300,
                    height: 300,
                    child: Column(children: [
                      Text("Subir Hoja de vida",style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],),
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
          builder: (BuildContext context){
                  return AlertDialog(
                  title: const Text('Creado con exito'),
                  content: ElevatedButton(
                    onPressed: () {
                          Navigator.of(context).pop();
                    },
                    child: const Text('Cerrar'),
                    
                  ),
                  );
                   
                   },);
            },
              child: const Text('Subir'),
            ),

              ],
          );
        } ,);
        },
        child: const Icon(Icons.add_box),
      ),
    );
  }
}

class AprendizCaja extends StatelessWidget {
  final String nombre;
  final String tiempo;
  final String imageUrl;
  const AprendizCaja({
    Key? key,
    required this.nombre,
    required this.tiempo,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
           onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title:Container(
                alignment: Alignment.bottomLeft,
                width: 30,
                height: 30,
               child: Image.network('assets/icono.png') ,

              ),
              content: Container(
                    width: 300,
                    height: 300,
                    child: Column(
                      children: [
                      Text(nombre,style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),),
                    const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 30),
                         Text(
                'Curso: ',
                 style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
              ),
               Text(
                'Edad: ',style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
              ),),
              Text(
                'Telefono: ',style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
              ),
              ),
                      ],
                    )
                    ],),
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
          builder: (BuildContext context){
                  return AlertDialog(
                  title: const Text('ENVIADO CON EXITO'),
                  content: ElevatedButton(
                    onPressed: () {
                          Navigator.of(context).pop();
                    },
                    child: const Text('Cerrar'),
                    
                  ),
                  );
                   
                   },);
            },
              child: const Text('Enviar'),
            ),

              ],
              );
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
                color: const Color.fromARGB(255, 199, 199, 199)
                    .withOpacity(0.5), 
                spreadRadius: 2, 
                blurRadius: 5, 
                offset:  const Offset(1, 3), 
              ),
            ],
          ),
          child:Row(
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
                      child: Image.network(
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
