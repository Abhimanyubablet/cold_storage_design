import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ringtone_branding/routes/app_routes.dart';
import 'package:ringtone_branding/widgets/animated_button.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AnimatedButtonController(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashScreen,
      routes: AppRoutes.routes,
    );
  }
}
