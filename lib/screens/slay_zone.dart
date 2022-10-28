import 'package:flutter/material.dart';
import 'package:stayfit/components/kButton.dart';
import 'package:stayfit/config/_helpers.dart';
import 'package:stayfit/config/_sizes.dart';
import 'package:stayfit/screens/setting_up.dart';
import 'package:stayfit/screens/welcome.dart';

class SlayZone extends StatelessWidget {
  const SlayZone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.spacing_large),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/zone.jpg'), fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
              bottom: MediaQuery.of(context).size.height * .02,
              left: MediaQuery.of(context).size.width * .1,
              right: MediaQuery.of(context).size.width * .1,
              child: KButton(onPressed: () => newPage(context, const SetUp()), label: 'Next'))
        ],
      ),
    )));
  }
}
