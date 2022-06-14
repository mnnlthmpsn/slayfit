import 'package:flutter/material.dart';
import 'package:stayfit/components/kButton.dart';
import 'package:stayfit/config/_helpers.dart';
import 'package:stayfit/screens/setup_complete.dart';

class SetUp extends StatelessWidget {
  const SetUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg_light.jpg'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Preparing your workout...'),
            Text('Loader here'),
            Text('Analyzing your profilfe'),
            KButton(onPressed: () => newPage(context, CompletedSetup()))
          ],
        ),
      ),
    ));
  }
}
