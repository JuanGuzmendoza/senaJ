import 'package:flutter/material.dart';

class Anuncios extends StatefulWidget {
   const Anuncios({ Key? key }) : super(key: key); 

   
  @override
  State<Anuncios> createState() => _AnunciosState();
}
class _AnunciosState extends State<Anuncios> {
@override
int clickcounter=0;
String click='clicks';

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text(""),
      ),
     body: Center(
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center ,
        children: [
        Text('$clickcounter'),
        Text(' $clickcounter $click '),
        const Text("Proyecto Flutter",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        const Text("En Busca de personal",style: TextStyle(fontSize: 12)),
        const Text("Creado hace 2 dias",style: TextStyle(fontSize: 12,fontStyle: FontStyle.italic,fontFamily: 'Raleway'))
      ],)
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