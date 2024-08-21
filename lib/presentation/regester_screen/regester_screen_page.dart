import 'package:flutter/material.dart';
import 'package:ringtone_branding/presentation/login_screen/login_screen_page.dart';

class RegesterPage extends StatefulWidget {
  const RegesterPage({super.key});

  @override
  State<RegesterPage> createState() => _RegesterPageState();
}

class _RegesterPageState extends State<RegesterPage> {
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
                // Center(
                //   child: Text(
                //     'Patient Information',
                //     style: TextStyle(
                //         fontSize: 20.0,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.black
                //     ),
                //   ),
                // ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: ClipOval(
                  child: Image.asset("assets/images/Splash_Logo.jpeg",
                      height: 70, width: 70)),
            ),
            SizedBox(height: 25),
            Center(
              child: Text("Create Your Account",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
            ),
            SizedBox(height: 35),

            Container(
              child: Column(
                children: [
                  Container(
                    margin:EdgeInsets.only(left: 20,right: 20),
                    child: TextField(
                      textAlign: TextAlign.left,
                      onChanged: (value) {

                      },

                      decoration: InputDecoration(
                        hintText: ' Mobile No.',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.all(16.0),
                        filled: true,
                        fillColor: Colors.white,

                        prefixIcon: IconButton(
                          icon: Icon(Icons.phone),
                          onPressed: () {

                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin:EdgeInsets.only(left: 20,right: 20),
                    child: TextField(
                      textAlign: TextAlign.left,
                      onChanged: (value) {

                      },

                      decoration: InputDecoration(
                        hintText: 'First Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.all(16.0),
                        filled: true,
                        fillColor: Colors.white,

                        prefixIcon: IconButton(
                          icon: Icon(Icons.person),
                          onPressed: () {

                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin:EdgeInsets.only(left: 20,right: 20),
                    child: TextField(
                      textAlign: TextAlign.left,
                      onChanged: (value) {

                      },

                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.all(16.0),
                        filled: true,
                        fillColor: Colors.white,

                        prefixIcon: IconButton(
                          icon: Icon(Icons.person),
                          onPressed: () {

                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin:EdgeInsets.only(left: 20,right: 20),
                    child: TextField(
                      textAlign: TextAlign.left,
                      onChanged: (value) {

                      },

                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.all(16.0),
                        filled: true,
                        fillColor: Colors.white,

                        prefixIcon: IconButton(
                          icon: Icon(Icons.email),
                          onPressed: () {

                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin:EdgeInsets.only(left: 20,right: 20),
                    child: TextField(
                      textAlign: TextAlign.left,
                      onChanged: (value) {

                      },

                      decoration: InputDecoration(
                        hintText: 'Address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.all(16.0),
                        filled: true,
                        fillColor: Colors.white,

                        prefixIcon: IconButton(
                          icon: Icon(Icons.account_balance_sharp),
                          onPressed: () {

                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 45,
              margin: EdgeInsets.only(left: 25,right: 25),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black54),
                ),
                onPressed: () {  },
                child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(color: Colors.grey),),
                  SizedBox(width: 4,),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text("Sign in ",style: TextStyle(color: Colors.black54),),
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
