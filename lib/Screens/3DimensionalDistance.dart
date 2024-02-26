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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("3Dimensional Distance", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: secondaryColor),)),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: CustomTextField(x1_Controller, Text("X1"), false)),
                  const SizedBox(width: 3,),
                  Expanded(child: CustomTextField(y1_Controller, Text("Y1"), false)),
                  const SizedBox(width: 3,),
                  Expanded(child: CustomTextField(z1_Controller, Text("Z1"), false)),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: CustomTextField(x2_Controller, Text("X2"), false)),
                  const SizedBox(width: 3,),
                  Expanded(child: CustomTextField(y2_Controller, Text("Y2"), false)),
                  const SizedBox(width: 3,),
                  Expanded(child: CustomTextField(z2_Controller, Text("Z2"), false)),
                ],
              ),
              const SizedBox(height: 10,),
              Center(child: CustomButton(getThreeDimensionalDistance)),
              const SizedBox(height: 10,),
              
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Distance: ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: secondaryColor),),
                  IconButton(onPressed: clearTextFields, icon: Icon(Icons.clear))
                ],
              ),
              
              
              const SizedBox(height: 5,),
              CustomTextField(distanceController, Text("Distance"), true)

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

    double dx = x1 - x2;
    double dy = y1 - y2;
    double dz = z1 - z2;

    double dx_squared = dx*dx;
    double dy_squared = dy*dy;
    double dz_squared = dz*dz;

    double sum_of_squares = dx_squared+dy_squared+dz_squared;

    double distance = sqrt(sum_of_squares);

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
