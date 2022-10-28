import 'package:flutter/material.dart';
import 'package:stayfit/components/kButton.dart';
import 'package:stayfit/config/_helpers.dart';
import 'package:stayfit/screens/welcome.dart';

class MascotScreen extends StatelessWidget {
  const MascotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/images/mascot.jpg',
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              )),
          Positioned(
              left: MediaQuery.of(context).size.width * .2,
              right: MediaQuery.of(context).size.width * .2,
              bottom: MediaQuery.of(context).size.height * .08,
              child: KButton(onPressed: () => newPageRoute(context, 'welcome'), label: 'Start'))
        ],
      )),
    );
  }
}
