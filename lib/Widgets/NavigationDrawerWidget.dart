import 'package:dimensional_bridge/Screens/AboutPage.dart';
import 'package:dimensional_bridge/Screens/HomePage.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({super.key});

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width*0.75,
      child: Column(
        children: [
          SizedBox(height: 20,),
          Text("Under-Construction",style: TextStyle(fontSize: 20),),
          TextButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => AboutPage()));
          }, child: Text("About"))
        ],
      ),
    );
  }
}
