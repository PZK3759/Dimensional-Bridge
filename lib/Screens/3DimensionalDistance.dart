import 'package:flutter/material.dart';

class ThreeDimensionalDistance extends StatefulWidget {
  const ThreeDimensionalDistance({super.key});

  @override
  State<ThreeDimensionalDistance> createState() => _ThreeDimensionalDistanceState();
}

class _ThreeDimensionalDistanceState extends State<ThreeDimensionalDistance> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("3Dimensional Distance")
            ],
          ),
        ),
      ),
    );
  }
}
