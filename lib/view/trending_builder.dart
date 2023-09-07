import 'package:flutter/material.dart';
import 'package:medbook/view/trending.dart';

class TrendingBuilder extends StatelessWidget {
  const TrendingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Trending();
          }),
    );
  }
}
