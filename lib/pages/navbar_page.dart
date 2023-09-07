import 'package:flutter/material.dart';
import 'package:medbook/pages/pages.dart';
import 'package:medbook/themes/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../view/home_page.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int selectedindex = 0;
  List pages = [
    const HomePage(),
    const ECommercePage(),
    const ForumPage(),
    const Scaffold(
      backgroundColor: Colors.blue,
    ),
    const Scaffold(
      backgroundColor: Colors.red,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) => setState(() => selectedindex = index),
          currentIndex: selectedindex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          items: [
            const BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_filled,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: 'E-Book',
              icon: Icon(
                MdiIcons.cart,
                size: 30,
              ),
            ),
            const BottomNavigationBarItem(
              label: 'Forum',
              icon: Icon(
                Icons.group,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: 'My Books',
              icon: Icon(
                MdiIcons.library,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/800px-Pierre-Person.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: pages[selectedindex],
      ),
    );
  }
}
