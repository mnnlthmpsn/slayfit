import 'package:flutter/material.dart';
import 'package:stayfit/components/kButton.dart';

class CompletedSetup extends StatelessWidget {
  const CompletedSetup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg_light.jpg'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Hi, Gina', style: Theme.of(context).textTheme.headline6),
            Icon(Icons.person_pin, size: 180),
            Text('It\'s time to keep fit to slay'),
            KButton(onPressed: () {})
          ],
        ),
      ),
    ));
  }
}
