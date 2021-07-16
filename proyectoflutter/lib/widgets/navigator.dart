import 'package:flutter/material.dart';
import 'package:proyectoflutter/screens/labios.dart';
import 'package:proyectoflutter/screens/ojos.dart';
import 'package:proyectoflutter/screens/rostro.dart';
import 'package:proyectoflutter/screens/manos.dart';
import 'package:proyectoflutter/widgets/tabs.dart';

class MyTabs extends StatefulWidget {
  static String id = 'navigator';

  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  int number = 0;

  final _pageOptions = [Labios(), Ojos(),Rostro(),Manos(), MyUpTabs()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          title: Text("Sofi's Cosmetics"),
          backgroundColor: Colors.pink.shade600,
        ),
      ),
      body: _pageOptions[number],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink.shade600,
        unselectedItemColor: Colors.pink.shade100,
        currentIndex: number,
        onTap: (index) {
          setState(() {
            number = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chair_alt),
            label: 'Labios',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye_outlined),
            label: 'Ojos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face_retouching_natural),
            label: 'Rostro',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cleaning_services),
            label: 'Uñas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.font_download),
            label: 'Accesorios',
          ),
        ],
      ),
    );
  }
}
