import 'dart:html';

import 'package:flutter/material.dart';

class AnunciosFuncion extends StatefulWidget {
   const AnunciosFuncion({ Key? key }) : super(key: key); 

   
  @override
  State<AnunciosFuncion> createState() => _AnunciosFuncionState();
}
class _AnunciosFuncionState extends State<AnunciosFuncion> {
int clickcounter=0;
String click='clicks';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        leading: IconButton(icon:Image.network('assets/icono.png'), 
        onPressed: ()
         { },),),
     body: Center(     
          child: Container( 
            width: 400, 
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Align(
              child: Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color.fromARGB(255, 221, 221, 221),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 158, 158, 158).withOpacity(0.5), // Color de la sombra
                  spreadRadius: 2, // Radio de propagación de la sombra
                  blurRadius: 5, // Radio de desenfoque de la sombra
                  offset: Offset(0, 5), // Desplazamiento de la sombra en dirección vertical
                ),
              ],
            ),
                child: Row(
                  children: [
                    InkWell(
                    onTap: () {
                    },
                    onHover: (value) {
                    },
                    child:Container(                     
                       color: Colors.green,
                      child: Column(                   
                       mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                  
                        Image.network(
                        'assets/icono.png', // Ruta de la imagen dentro del proyecto
                        width: 60, // Ancho de la imagen
                        height: 40, // Alto de la imagen
                     ),                     
                      ],
                      ),
                    ),),
                     InkWell(
                    onTap: () {
                    },
                    onHover: (value) {
                    },
                   child: Column(

                      children:  const [   
                      Text('\nPROYECTO ANGULAR_FRONT', style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                          fontWeight: FontWeight.bold, 
                        ),
                       
                      ),
                      Text('Creado hace 2 dias'),
                        
                    ],
                    ),)
                  ],
                ),
                
              ),
              
            ),
          ),

     ),
     
     floatingActionButton: FloatingActionButton(
      onPressed: () {
       if (clickcounter==0) {
         click='click';
       }else{
         click='clicks';
       }
        setState(() {
          clickcounter++;
        });
      },
      child: const Icon(Icons.plus_one),
     ),
    );
  }
}