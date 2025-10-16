import 'package:donut_app_8sc_25_3/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
List<Widget> myTabs = [
  const MyTab(iconPath: 'lib/icons/donut.png', label: 'Donut'),
  const MyTab(iconPath: 'lib/icons/burger.png', label: 'Burger'),
  const MyTab(iconPath: 'lib/icons/pancakes.png', label: 'Pancake'),
  const MyTab(iconPath: 'lib/icons/smoothie.png', label: 'Smoothie'),
  const MyTab(iconPath: 'lib/icons/pizza.png', label: 'Pizza'),
];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],),
            actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(
                Icons.person,
                color: Colors.grey[800],
              ),
            ),  
            ],
          ),
          body: Column(
            children: [
              //Texto principal
              Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Row(
                  children: [
                    Text('I want to ',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Text('eat',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
      
      
              //Pestañas (tabBar)
      
              TabBar(tabs: myTabs),
      
              //Contenido de pestañas (tabBarView)
      
              //Carrito de compras
            ],
          ),
      ),
    );
  }
}

