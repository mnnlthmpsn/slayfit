import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stayfit/blocs/name.blocs.dart';
import 'package:stayfit/components/kButton.dart';
import 'package:stayfit/config/_helpers.dart';
import 'package:stayfit/config/_sizes.dart';
import 'package:stayfit/screens/workout.dart';
import 'package:stayfit/states/name.states.dart';

class CompletedSetup extends StatelessWidget {
  const CompletedSetup({Key? key}) : super(key: key);

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
            BlocBuilder<NameBloc, NameState>(builder: (BuildContext context, NameState state) {
              return Text('Hi, ${state.name}',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontSize: AppSizes.textSizeLarge));
            }),
            Icon(Icons.person_pin, size: 180),
            Text('It\'s time to keep fit to slay',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontSize: AppSizes.textSizeMedium)),
            KButton(onPressed: () => newPage(context, const Workout()), label: 'Let\'s Start',)
          ],
        ),
      ),
    ));
  }
}
