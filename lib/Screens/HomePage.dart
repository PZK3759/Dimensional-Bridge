import 'package:dimensional_bridge/Screens/NetherToOver.dart';
import 'package:dimensional_bridge/Widgets/AppbarWidget.dart';
import 'package:dimensional_bridge/Widgets/NavigationDrawerWidget.dart';
import 'package:flutter/material.dart';


import 'OverToNether.dart';


class HomePage extends StatefulWidget {
  HomePage(this.currentIndex, {super.key});

  int currentIndex;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  final screens = [
    OverToNether(),
    NetherToOver()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        appBar: AppbarWidget(),
        drawer: NavigationDrawerWidget(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: widget.currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.multiple_stop), label: "OverworldToNether"),
            BottomNavigationBarItem(icon: Icon(Icons.multitrack_audio), label: "NetherToOverworld")
          ],
          onTap: (index){
            setState(() {
              widget.currentIndex = index;
            });
          },
        ),
        body: screens[widget.currentIndex],
    ));
  }

}

