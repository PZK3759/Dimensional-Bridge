import 'package:dimensional_bridge/Widgets/AppbarWidget.dart';
import 'package:dimensional_bridge/Widgets/NavigationDrawerWidget.dart';
import 'package:flutter/material.dart';
import 'package:dimensional_bridge/Widgets/AppbarWidget.dart';

class OverToNether extends StatefulWidget {
  const OverToNether({super.key});

  @override
  State<OverToNether> createState() => _OverToNetherState();
}

class _OverToNetherState extends State<OverToNether> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppbarWidget(),
      drawer: NavigationDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(children: [
              Text("Overworld Coordinates", style: TextStyle(fontSize: 18),),
              Expanded(child: Container()),
              IconButton(onPressed: (){
                //todo: implement fucntion
              }, icon: Icon(Icons.change_circle_outlined)),
            ]),
          ],
        ),
      ),
    ));
  }
}
