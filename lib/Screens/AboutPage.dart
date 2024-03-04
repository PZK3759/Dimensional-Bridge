import 'package:dimensional_bridge/Widgets/AppbarWidget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppbarWidget(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/nether.jpg"),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("How Dimensional-Bridge works", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Calculate Nether Coordinates:", style: TextStyle(fontSize: 25, color: Colors.white70, fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Enter your overworld coordinates and Dimensional-Brigde will Calculate the Corresponding Nether coordinates. It's that simple", style: TextStyle(color: Colors.white70, fontSize: 20),),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Calculate Overworld Coordinates:", style: TextStyle(fontSize: 25, color: Colors.white70, fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Yes, You guessed right, enter your nether coordinates and Dimensional-Brigde will Calculate the Corresponding overworld coordinates.", style: TextStyle(color: Colors.white70, fontSize: 20),),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Calculate 3Dimensional Distance between 2 Blocks/Location:", style: TextStyle(fontSize: 25, color: Colors.white70, fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Simply enter the X,Y,Z coordinates of 2 blocks/locations and Dimensional-Bridge will Calculate the distance between them.", style: TextStyle(color: Colors.white70, fontSize: 20),),
              ),
              const SizedBox(height: 20,),
              ListTile(
                iconColor: Colors.white70,
                textColor: Colors.white70,
                leading: Icon(Icons.account_circle_rounded),
                title: Text("Github"),
                subtitle: Text("See source code on github"),
                onTap: _launchURL, //implement url launcher
              )
            ],
          ),
        ),
      ),
    );
  }

  _launchURL() async{
    final Uri uri = Uri.parse('https://github.com/PZK3759/Dimensional-Dridge');
    if (await canLaunchUrl(uri)){
      await launchUrl(uri, mode: LaunchMode.inAppBrowserView);
    } else {
      // can't launch url
    }
  }



}
