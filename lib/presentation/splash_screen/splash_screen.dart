import 'dart:async';

import 'package:flutter/material.dart';

import '../../widgets/custom_image_widgets.dart';
import '../landing_page/landing_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds:3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(
          builder: (context) => LandingPage()
      )
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: CustomImageWidget(
                imagePath: 'assets/images/Splash_Logo.jpeg',
                fit: BoxFit.cover,
                width: 80,
                height: 80,
                borderRadius: 0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(child: Text("Cold Storage",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22 )),),
          ],
        ),
      ),
    );
  }
}
