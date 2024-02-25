import 'package:flutter/material.dart';

import '../Global.dart';

Widget CustomTextField(

    controller,
    labelText,
    readOnly,

){
  return TextField(
    controller: controller,
    readOnly: readOnly,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
        label: labelText,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: inactiveTFColor, width: 2)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: activeTFColor, width: 3)
        )
    ),
  );
}
