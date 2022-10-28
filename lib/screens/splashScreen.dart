import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stayfit/screens/mascot.dart';
import 'package:stayfit/screens/welcome.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: double.infinity,
      splash: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset('assets/images/splash_img.jpg',
              fit: BoxFit.cover)),
      nextScreen: const MascotScreen(),
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
