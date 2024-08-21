import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../consts/colors.dart';

class AnimatedButtonWidget extends StatefulWidget {
  final VoidCallback onTapCallback;
  final Color buttonColor;
  final String text;
  final double textSize;
  final Color textColor;

  const AnimatedButtonWidget({
    Key? key,
    required this.onTapCallback,
    this.buttonColor = Colors.green, // Replace with your desired default color
    required this.text,
    this.textSize = 18.0,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  State<AnimatedButtonWidget> createState() => _AnimatedButtonWidgetState();
}

class _AnimatedButtonWidgetState extends State<AnimatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    const double _height = 47 - 0; // 6 is the shadow height

    return GestureDetector(
      onTapDown: (_) =>
          Provider.of<AnimatedButtonController>(context, listen: false)
              .onTapDown(),
      onTapUp: (_) =>
          Provider.of<AnimatedButtonController>(context, listen: false)
              .onTapUp(),
      onTapCancel: () =>
          Provider.of<AnimatedButtonController>(context, listen: false)
              .onTapCancel(),
      child: Consumer<AnimatedButtonController>(
        builder: (context, model, child) => SizedBox(
          height: _height + 10, // 6 is the shadow height
          width: screenSize.width,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  height: _height,
                  width: screenSize.width / 1.10,
                  decoration: BoxDecoration(
                    color: animationColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
              ),
              AnimatedPositioned(
                curve: Curves.easeInBack,
                bottom: model?.position ?? 0,
                duration: const Duration(milliseconds: 300),
                child: InkWell(
                  onTap: () {
                    // Call the callback function provided by the parent widget
                    widget.onTapCallback();
                  },
                  child: Container(
                    height: _height,
                    width: screenSize.width / 1.10,
                    decoration: BoxDecoration(
                      color: widget.buttonColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        widget.text,
                        style: GoogleFonts.barlow(
                          textStyle: TextStyle(
                            color: widget.textColor,
                            fontSize: widget.textSize,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// You should define the AnimatedButtonController class somewhere in your code.

class AnimatedButtonController extends ChangeNotifier {
  double _position = 0;

  double get position => _position;

  void onTapDown() {
    _position = 10; // Example value, replace with your desired position
    notifyListeners();
  }

  void onTapUp() {
    _position = 0; // Example value, replace with your desired position
    notifyListeners();
  }

  void onTapCancel() {
    _position = 0; // Example value, replace with your desired position
    notifyListeners();
  }
}
