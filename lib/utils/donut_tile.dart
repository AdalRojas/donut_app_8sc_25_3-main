import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {

  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor;
  final String donutImagePaht;
  final String donutProvider;

  //Constructor
  const DonutTile({super.key, required this.donutFlavor, required this.donutPrice, required this.donutColor, required this.donutImagePaht, required this.donutProvider});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(color: donutColor[50], borderRadius: BorderRadius.circular(24.0)),
        child: Column(children: [
          //Precio
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: donutColor[100],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    topRight: Radius.circular(24)
                  )
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 18,
                ),
                child: Text(
                  "\$$donutPrice",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: donutColor[800],
                  ),
                ),
              ),
              
            
          ],),
      
          //Imagen de la dodna
          Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
                child: Image.asset(donutImagePaht),
              ),
              //nombre de la dona
          Text(
            donutFlavor,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
            //tienda de la dona
          Text(
            donutProvider,
            style: TextStyle(color: Colors.grey[600]),
          ),
            //Botones
          //favorite
          
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.favorite,color: Colors.pink,),  
                TextButton(
                  onPressed: (){}, 
                  child: Text(
                    'Add',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  )),
                
              ],
            ),
          )
          
        ],
      
        ),
      ),
    );
  }
}