import 'package:dimensional_bridge/Global.dart';
import 'package:dimensional_bridge/Screens/HomePage.dart';
import 'package:dimensional_bridge/Screens/OverToNether.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    loadApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/minecraf_128.png"),
          SizedBox(height: 10,),
          SpinKitSquareCircle(size: 50,color: primaryColor,),  //might change later
        ],
      ),
    );
  }

  void loadApp(){

    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage(0)));
    });

  }

}
