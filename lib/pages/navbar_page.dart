import 'package:flutter/material.dart';
import 'package:medbook/pages/pages.dart';
import 'package:medbook/themes/colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
    const Scaffold(
      backgroundColor: Colors.pink,
    ),
    const Scaffold(
      backgroundColor: Colors.blue,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(15),
            ),
            child: GNav(
              backgroundColor: Colors.white,
              gap: 8,
              color: Colors.black,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              padding: const EdgeInsets.all(20),
              onTabChange: (index) => setState(() => selectedindex = index),
              tabs: [
                const GButton(
                  icon: Icons.home,
                  text: "Home",
                  iconSize: 30,
                ),
                GButton(
                  icon: MdiIcons.cart,
                  text: "ECommerce",
                  iconSize: 30,
                ),
                const GButton(
                  icon: Icons.group,
                  text: "Forum",
                  iconSize: 30,
                ),
                GButton(
                  icon: MdiIcons.library,
                  text: "MyLibrary",
                  iconSize: 30,
                ),
              ],
            ),
          ),
        ),
        body: pages[selectedindex],
      ),
    );
  }
}
