import 'package:dimensional_bridge/Global.dart';
import 'package:dimensional_bridge/Widgets/AppbarWidget.dart';
import 'package:dimensional_bridge/Widgets/CustomButton.dart';
import 'package:dimensional_bridge/Widgets/CustomTextField.dart';
import 'package:dimensional_bridge/Widgets/NavigationDrawerWidget.dart';
import 'package:flutter/material.dart';
import 'package:dimensional_bridge/Widgets/AppbarWidget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OverToNether extends StatefulWidget {
  const OverToNether({super.key});

  @override
  State<OverToNether> createState() => _OverToNetherState();
}

class _OverToNetherState extends State<OverToNether> {

  TextEditingController overWorld_X_Controller = TextEditingController();
  TextEditingController overWorld_Y_Controller = TextEditingController();
  TextEditingController overWorld_Z_Controller = TextEditingController();

  TextEditingController nether_X_Controller = TextEditingController();
  TextEditingController nether_Y_Controller = TextEditingController();
  TextEditingController nether_Z_Controller = TextEditingController();


  String overWorld_X = "";
  String overWorld_Y = "";
  String overWorld_Z = "";

  String nether_X = "";
  String nether_Y = "";
  String nether_Z = "";

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
              IconButton(onPressed: clearTextFields,
                  icon: Icon(Icons.clear_outlined)),
            ]),
            CustomTextField(overWorld_X_Controller, Text("X"), false),
            SizedBox(height: 10,),
            CustomTextField(overWorld_Y_Controller, Text("Y"), false),
            SizedBox(height: 10,),
            CustomTextField(overWorld_Z_Controller, Text("Z"), false),
            SizedBox(height: 50,),
            SizedBox(
              width: double.infinity,
              child: CustomButton(getNetherCoordinates),
            ),
            SizedBox(height: 50,),
            Row(children: [
              Text("Nether Coordinates", style: TextStyle(fontSize: 18),),
              Expanded(child: Container()),
            ]),
            SizedBox(height: 15,),
            CustomTextField(nether_X_Controller, Text("X"), true),
            SizedBox(height: 10,),
            CustomTextField(nether_Y_Controller, Text("Y"), true),
            SizedBox(height: 10,),
            CustomTextField(nether_Z_Controller, Text("Z"), true),
          ],
        ),
      ),
    ));
  }


  void clearTextFields(){
    overWorld_X_Controller.text = "";
    overWorld_Y_Controller.text = "";
    overWorld_Z_Controller.text = "";

    nether_X_Controller.text = "";
    nether_Y_Controller.text = "";
    nether_Z_Controller.text = "";
  }

  void getNetherCoordinates(){
    overWorld_X = overWorld_X_Controller.text;
    overWorld_Y = overWorld_Y_Controller.text;
    overWorld_Z = overWorld_Z_Controller.text;

    nether_X = (int.parse(overWorld_X)/8).truncate().toString();
    nether_Y = overWorld_Y;
    nether_Z = (int.parse(overWorld_Z)/8).truncate().toString();

    nether_X_Controller.text = nether_X;
    nether_Y_Controller.text = nether_Y;
    nether_Z_Controller.text = nether_Z;

    setState(() {

    });

  }


}
