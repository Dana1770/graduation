import 'package:flutter/material.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(child: Image(image: AssetImage('assets/disease.png'),width: 200,height: 200,)),
      GradientAnimationText(
        text: Text(
          'Parkinson',
          style: TextStyle(
            fontFamily: 'Tilt Neon',
            fontSize: 50,
          ),
        ),
        colors: [
          Colors.black,
          Colors.orangeAccent,
        ],
        duration: Duration(seconds: 5),
      ),
    ],
  ),
);
  }
}
