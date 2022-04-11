import 'package:flutter/material.dart';
import 'routes.dart';
import 'navBar.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
    theme: ThemeData(primarySwatch: Colors.pink),
    title: "Belajar Drawer",
    debugShowCheckedModeBanner: false,
    home: BelajarNavigationDrawer(),
  ));
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Beranda"),
          ),
          drawer: DrawerNav(),
          body: Center(
            child: Text('Welcome', style: TextStyle(fontWeight: FontWeight.bold)),
          )));
}
