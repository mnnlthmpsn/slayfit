import 'package:flutter/material.dart';
import 'package:stayfit/components/kButton.dart';
import 'package:stayfit/config/_helpers.dart';
import 'package:stayfit/config/_sizes.dart';
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
                image: AssetImage('assets/images/bg_light.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Preparing your workout...', style: TextStyle(fontSize: AppSizes.textSizeLarge, fontWeight: FontWeight.bold)),
            _loader(),
            Text('Analyzing your profilfe', style: TextStyle(fontSize: AppSizes.textSizeLarge)),
            KButton(onPressed: () => newPageRoute(context, 'setupComplete'), label: 'Next', isPrimary: false)
          ],
        ),
      ),
    ));
  }

  Widget _loader() {
    return Builder(builder: (BuildContext context) {
      return Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              width: MediaQuery.of(context).size.height * .2,
              child: const CircularProgressIndicator(
                strokeWidth: 8,
                value: 1,
                color: Colors.blueGrey,
              )),
          SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              width: MediaQuery.of(context).size.height * .2,
              child: const CircularProgressIndicator(
                strokeWidth: 8,
                color: Colors.green,
              ))
        ],
      );
    });
  }
}
