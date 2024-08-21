import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ringtone_branding/presentation/dashboard/dashboard_screen_page.dart';

import '../../consts/colors.dart';
import '../../widgets/custom_elevated_button.dart';
import '../regester_screen/regester_screen_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _controller = TextEditingController();
  String _inputText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Row(
              children: [
                SizedBox(width: 20),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                ),
                SizedBox(width: 30),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: ClipOval(
                  child: Image.asset("assets/images/Splash_Logo.jpeg",
                      height: 70, width: 70)),
            ),
            SizedBox(height: 25),
            Center(
              child: Text("Login to Your Account",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
            ),
            SizedBox(height: 55),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    child: IntlPhoneField(
                      decoration: InputDecoration(
                        labelText: 'Mobile No.',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                      onChanged: (phone) {
                        setState(() {
                          // Here you can extract the phone number with country code
                          _inputText = phone.completeNumber;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(bottom: 20),
                  // child: CustomElevatedButton(
                  //   text: 'Get OTP',
                  //   onPressed: () {
                  //    },
                  // ),

                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black54),
                    ),
                    onPressed: () {},
                    child: Text("Get OTP",style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: PinCodeTextField(
                appContext: context,
                length: 6,
                onChanged: (value) {
                  // Handle OTP input changes
                },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.black54,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 45,
              margin: EdgeInsets.only(left: 25, right: 25),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black54),
                ),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => DashboardScreen(),));
                },
                child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegesterPage()),
                        );
                      },
                      child: Text(
                        "Sign up ",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
