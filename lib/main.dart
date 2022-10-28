import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stayfit/blocs/name.blocs.dart';
import 'package:stayfit/screens/setup_complete.dart';
import 'package:stayfit/screens/splashScreen.dart';
import 'package:stayfit/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  NameBloc _nameBloc = NameBloc();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        'welcome': (context) =>
            BlocProvider.value(value: _nameBloc, child: const Welcome()),
        'setupComplete': (context) =>
            BlocProvider.value(value: _nameBloc, child: const CompletedSetup())
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameBloc.close();
    super.dispose();
  }
}
