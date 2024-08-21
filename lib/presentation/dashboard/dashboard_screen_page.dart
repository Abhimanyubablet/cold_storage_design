import 'package:flutter/material.dart';

import '../../widgets/buttom_navigation.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: ButtomNavigation(),

    );
  }
}
