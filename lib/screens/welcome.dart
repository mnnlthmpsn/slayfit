import 'package:flutter/material.dart';
import 'package:stayfit/components/kButton.dart';
import 'package:stayfit/components/kTextInput.dart';
import 'package:stayfit/config/_helpers.dart';
import 'package:stayfit/config/_sizes.dart';
import 'package:stayfit/screens/slay_zone.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.spacing_large),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.jpg'),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * .12),
                _nameWidget(),
                SizedBox(height: MediaQuery.of(context).size.height * .1),
                _ageWidget(),
                SizedBox(height: MediaQuery.of(context).size.height * .1),
                KButton(onPressed: () => newPage(context, const SlayZone()))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _nameWidget() {
    return Builder(builder: (BuildContext context) {
      return Column(
        children: [
          Text('What\'s your name?',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.white)),
          KTextInput()
        ],
      );
    });
  }

  Widget _ageWidget() {
    return Builder(builder: (BuildContext context) {
      return Column(
        children: [
          Text('What\'s your age?',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.white)),
          KTextInput()
        ],
      );
    });
  }
}
