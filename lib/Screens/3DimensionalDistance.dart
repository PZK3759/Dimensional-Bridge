import 'package:dimensional_bridge/Global.dart';
import 'package:dimensional_bridge/Widgets/CustomButton.dart';
import 'package:dimensional_bridge/Widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ThreeDimensionalDistance extends StatefulWidget {
  const ThreeDimensionalDistance({super.key});

  @override
  State<ThreeDimensionalDistance> createState() => _ThreeDimensionalDistanceState();
}

class _ThreeDimensionalDistanceState extends State<ThreeDimensionalDistance> {

  TextEditingController x1_Controller = TextEditingController();
  TextEditingController y1_Controller = TextEditingController();
  TextEditingController z1_Controller = TextEditingController();


  TextEditingController x2_Controller = TextEditingController();
  TextEditingController y2_Controller = TextEditingController();
  TextEditingController z2_Controller = TextEditingController();


  TextEditingController distanceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Image.asset("assets/overworld_1.jpg"),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Center(child: Text("3Dimensional Distance", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: primaryTextColor),)),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: CustomTextField(x1_Controller, Text("X1",style: TextStyle( color: primaryTextColor)), false)),
                        const SizedBox(width: 3,),
                        Expanded(child: CustomTextField(y1_Controller, Text("Y1",style: TextStyle( color: primaryTextColor)), false)),
                        const SizedBox(width: 3,),
                        Expanded(child: CustomTextField(z1_Controller, Text("Z1",style: TextStyle( color: primaryTextColor)), false)),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: CustomTextField(x2_Controller, Text("X2",style: TextStyle( color: primaryTextColor)), false)),
                        const SizedBox(width: 3,),
                        Expanded(child: CustomTextField(y2_Controller, Text("Y2",style: TextStyle( color: primaryTextColor)), false)),
                        const SizedBox(width: 3,),
                        Expanded(child: CustomTextField(z2_Controller, Text("Z2",style: TextStyle( color: primaryTextColor)), false)),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Center(child: CustomButton(getThreeDimensionalDistance)),
                    const SizedBox(height: 10,),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Distance: ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: primaryTextColor),),
                        IconButton(onPressed: clearTextFields, icon: Icon(Icons.clear, color: Colors.white,))
                      ],
                    ),


                    const SizedBox(height: 5,),
                    CustomTextField(distanceController, Text("Distance",style: TextStyle( color: primaryTextColor)), true)
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }


  void getThreeDimensionalDistance(){

    double x1 = double.parse(x1_Controller.text);
    double y1 = double.parse(y1_Controller.text);
    double z1 = double.parse(z1_Controller.text);

    double x2 = double.parse(x2_Controller.text);
    double y2 = double.parse(y2_Controller.text);
    double z2 = double.parse(z2_Controller.text);

    double distance = sqrt((x1 - x2)*(x1 - x2) + (y1 - y2)*(y1 - y2) + (z1 - z2)*(z1 - z2));

    distanceController.text = distance.toString();

    setState(() {

    });





  }

  void clearTextFields(){

    x1_Controller.text = "";
    x2_Controller.text = "";
    y1_Controller.text = "";
    y2_Controller.text = "";
    z1_Controller.text = "";
    z2_Controller.text = "";

    distanceController.text = "";

  }


}
