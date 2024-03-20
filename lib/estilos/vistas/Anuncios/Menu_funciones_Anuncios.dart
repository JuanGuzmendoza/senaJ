
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
                  imageUrl: "assets/icono.png",
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
                  imageUrl:"assets/icono.png",
                    
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
                  imageUrl:"assets/icono.png",
                     
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
                  imageUrl:"assets/icono.png",
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Text(nombre,style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 30),
                               Text(
                                          'Curso: Adso_9',
                                           style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                                        ),
                                         Text(
                                          'Edad: 18',style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                                        ),),
                                        Text(
                                          'Telefono: 31031',style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                                        ),
                                        ),
                                      
                                        
                            ],
                            
                                                    ),
                          ),
                                         ClipRRect(
                                           borderRadius: BorderRadius.circular(1010.0),
                                           child: Image.network(
                       imageUrl, // Ruta de la imagen dentro del proyecto
                       width: 100, // Ancho de la imagen
                       height: 100, // Alto de la imagen
                       fit: BoxFit.cover),
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
                          width: 43, // Ancho de la imagen
                          height: 43, // Alto de la imagen
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
