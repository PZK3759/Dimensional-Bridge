import 'package:dimensional_bridge/Global.dart';
import 'package:flutter/material.dart';

import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [

            Image.asset("assets/nether_1.jpg"),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(children: [
                    Text("Overworld Coordinates", style: TextStyle(fontSize: 18,color: primaryTextColor),),
                    Expanded(child: Container()),
                    IconButton(onPressed: clearTextFields,
                        icon: Icon(Icons.clear_outlined,color: Colors.white,)),
                  ]),
                  CustomTextField(overWorld_X_Controller, Text("X",style: TextStyle( color: primaryTextColor)), false),
                  SizedBox(height: 10,),
                  CustomTextField(overWorld_Y_Controller, Text("Y",style: TextStyle( color: primaryTextColor)), false),
                  SizedBox(height: 10,),
                  CustomTextField(overWorld_Z_Controller, Text("Z",style: TextStyle( color: primaryTextColor)), false),
                  SizedBox(height: 50,),
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(getNetherCoordinates),
                  ),
                  SizedBox(height: 50,),
                  Row(children: [
                    Text("Nether Coordinates", style: TextStyle(fontSize: 18,color: primaryTextColor),),
                    Expanded(child: Container()),
                  ]),
                  SizedBox(height: 15,),
                  CustomTextField(nether_X_Controller, Text("X",style: TextStyle( color: primaryTextColor)), true),
                  SizedBox(height: 10,),
                  CustomTextField(nether_Y_Controller, Text("Y",style: TextStyle( color: primaryTextColor)), true),
                  SizedBox(height: 10,),
                  CustomTextField(nether_Z_Controller, Text("Z",style: TextStyle( color: primaryTextColor)), true),
                ],
              ),
            )

            
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
