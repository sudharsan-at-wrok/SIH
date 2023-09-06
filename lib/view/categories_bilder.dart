import 'package:flutter/material.dart';
import 'package:medbook/view/categories.dart';

class CategoriesBuilder extends StatelessWidget {
  CategoriesBuilder({super.key});

  final List category = [
  
    'assets/ayurvedha.jpeg',
    'assets/siddha.jpeg',
    'assets/unani.jpeg',
    'assets/homeopathy.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 500,
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: category.length,
          itemBuilder: (context, index) {
            return Categories(images: category[index]);
          },
        ),
      ),
    );
  }
}
