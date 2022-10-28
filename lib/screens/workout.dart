import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stayfit/config/_sizes.dart';

class Workout extends StatefulWidget {
  const Workout({Key? key}) : super(key: key);

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {

  final List<Map<String, dynamic>> menu = [
    {'label': 'Home', 'icon': FaIcon(FontAwesomeIcons.house)},
    {'label': 'Workout', 'icon': FaIcon(FontAwesomeIcons.dumbbell)},
    {'label': 'Chart', 'icon': FaIcon(FontAwesomeIcons.chartSimple)},
    {'label': 'Settings', 'icon': FaIcon(FontAwesomeIcons.gear)},
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text('WORKOUT LIST', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: AppSizes.spacing_standard),
        child: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
      bottomNavigationBar: _bottomNavbar(),
    ));
  }

  Widget _bottomNavbar() {
    return BottomNavigationBar(
        items: List.generate(
            4,
            (index) => BottomNavigationBarItem(

                  icon: menu[index]['icon'],
                  label: menu[index]['label'],
                )),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.purpleAccent,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
    );
  }
}
