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
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            const Text("Under-Construction",style: TextStyle(fontSize: 20),),

            const Divider(color: Colors.black,),

            ListTile(
              leading: const Icon(Icons.multiple_stop),
              title: const Text("Calculate Nether", style: TextStyle(fontSize: 18),),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(0)));
              },
            ),
            ListTile(
              leading: const Icon(Icons.multitrack_audio),
              title: const Text("Calculate Overworld", style: TextStyle(fontSize: 18),),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(1)));
              },
            ),
            ListTile(
              leading: const Icon(Icons.cable),
              title: const Text("Calculate Distance", style: TextStyle(fontSize: 18),),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(2)));
              },
            ),

            const Divider(color: Colors.black,),
            ListTile(
              leading: const Icon(Icons.warning_outlined),
              title: const Text("About", style: TextStyle(fontSize: 18),),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
              },
            )
          ],
        ),
      ),
    );
  }

}
