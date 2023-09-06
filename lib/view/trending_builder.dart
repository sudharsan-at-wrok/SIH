import 'package:flutter/material.dart';
import 'package:medbook/view/Trending.dart';

class TrendingBuilder extends StatelessWidget {
  const TrendingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: SizedBox(
        height: 180,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Trending();
            }),
      ),
    );
  }
}
