import 'package:donut_app_8sc_25_3/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class Donuttab extends StatelessWidget {
  Donuttab({super.key});

  //list of donuts
  final List donutOnsale=[
        //donutFlavor, donutPrice,donut,color
        ['Chocolate', '100', Colors.brown, "lib/images/chocolate_donut.png",'Dunkin Donot'],
        ['Grape', '80', Colors.purple, "lib/images/grape_donut.png",'oxxo'],
        ['Ice cream', '95', Colors.blue, "lib/images/icecream_donut.png",'Staebusc'],
        ['Strawberry', '89', Colors.red, "lib/images/strawberry_donut.png",'Krispi'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Se encarga de acomodar 
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

        crossAxisCount: 2,
        childAspectRatio: 1 / 1.4,
        
        ),

        //Cuantos elemento tendra
        itemCount: donutOnsale.length,

        itemBuilder: (context,index){
          return DonutTile(
            donutFlavor: donutOnsale[index][0],
            donutPrice: donutOnsale[index][1],
            donutColor: donutOnsale[index][2],
            donutImagePaht: donutOnsale[index][3],
            donutProvider: donutOnsale[index][4]);

        }
      
        //loque se va a construir en el drig
        
        
        );
  }
}
