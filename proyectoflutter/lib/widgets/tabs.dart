import 'package:flutter/material.dart';
import 'package:proyectoflutter/screens/esponjas.dart';
import 'package:proyectoflutter/screens/cosmetiquera.dart';
import 'package:proyectoflutter/screens/brochas.dart';

class MyUpTabs extends StatefulWidget {
  static String id = 'tabsAlimentos';

  @override
  _MyUpTabsState createState() => _MyUpTabsState();
}

class _MyUpTabsState extends State<MyUpTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          //titulo en la parte superior
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: AppBar(
              backgroundColor: Colors.pink.shade600,
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.brush_outlined)),
                  Tab(icon: Icon(Icons.local_play_rounded)),
                  Tab(icon: Icon(Icons.home_repair_service))
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[Brochas(), Esponjas(), Cosmetiquera()],
          ),
        ));
  }
}
