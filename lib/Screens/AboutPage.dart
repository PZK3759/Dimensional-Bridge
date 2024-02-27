import 'package:dimensional_bridge/Widgets/AppbarWidget.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: Column(
        children: [
          Text("About Page"),
        ],
      ),
    );
  }
}
