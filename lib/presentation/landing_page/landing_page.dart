import 'package:flutter/material.dart';
import 'package:ringtone_branding/presentation/login_screen/login_screen_page.dart';

import '../../widgets/animated_button.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=600",
            ),
            fit: BoxFit.cover, // Adjust this based on your needs
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: screenWidth * 0.95, // Adjusted width
                height: screenHeight * 0.32, // Adjusted height
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      width: screenWidth * 0.84, // Adjusted width
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "Keep perishables fresh and secure with ColdStore!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: AnimatedButtonWidget(
                        onTapCallback: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                        },
                        text: 'Get Started',
                        buttonColor: Colors.black54,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
