import 'package:aqibproject1/app/data/constants.dart';
import 'package:flutter/material.dart';

import '../routes/page_routes.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kWhiteBackground,
          currentIndex: _selectedIndex,
          elevation: 8,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kGreenPrimaryColor,
          unselectedItemColor: kBlack,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.watch), label: 'Schedule'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Preset'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: 'Profile'),
          ]),
    );
  }
}
