import 'package:flutter/material.dart';
import 'package:medbook/view/categories_bilder.dart';
import 'package:medbook/view/trending_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                      )),



                      
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 20, right: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Hi Sudharsan',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                          color: Colors.white,
                          iconSize: 35,
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 130),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: Text(
                          'Trending',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 197, 255, 200),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(child: TrendingBuilder()),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            CategoriesBuilder()
          ],
        ),
      ),
    );
  }
}
