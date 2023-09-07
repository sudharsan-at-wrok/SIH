import 'package:flutter/material.dart';
import 'package:medbook/view/categories.dart';

class CategoriesBuilder extends StatelessWidget {
  CategoriesBuilder({super.key});

  final List category = [
    'assets/ayurveda1-removebg-preview.png',
    'assets/siddha1-removebg-preview (1)1.png',
    'assets/unani1-removebg-preview1.png',
    'assets/homeopathy1-removebg-preview.png',
  ];
  final List categoryname = ['Ayurveda', 'Siddha', 'Unani', 'Homeopathy'];
  final List colors = [
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.green.shade50,
    Colors.brown.shade50,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: category.length,
        itemBuilder: (context, index) {
          return Categories(
            images: category[index],
            categoryname: categoryname[index],
            colors: colors[index],
          );
        },
      ),
    );
  }
}
