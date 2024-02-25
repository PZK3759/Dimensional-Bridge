import 'package:flutter/material.dart';

import '../Global.dart';

Widget CustomButton(

    onPressed,

){

  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        backgroundColor: primaryButtonColor,
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text("Calculate", style: TextStyle(fontSize: 18),),
      ));

}