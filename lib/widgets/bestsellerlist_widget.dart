import 'package:flutter/material.dart';
import 'package:medbook/datas/datas.dart';
// import 'package:medbook/themes/colors.dart';
// import 'package:medbook/widgets/widgets.dart';

class BestSellerListWidget extends StatelessWidget {
  const BestSellerListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: bestSellerBooks.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (() {}),
                child: Container(
                  height: 250,
                  width: 170,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 13,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(bestSellerBooks[index]["imgUrl"]),
                    ),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        15,
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   width: 300,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 15),
              //         child: Text(
              //           newBooks[index]["author"],
              //           style: const TextStyle(
              //               color: subheadingColor,
              //               fontSize: 13,
              //               fontWeight: FontWeight.w600),
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.symmetric(
              //             horizontal: 15, vertical: 5),
              //         child: Row(
              //           children: [
              //             IconTheme(
              //               data: const IconThemeData(
              //                 color: Colors.amber,
              //                 size: 10,
              //               ),
              //               child: StarDisplay(
              //                 value: newBooks[index]["rating"],
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.symmetric(
              //                 horizontal: 5,
              //               ),
              //               child: Text(
              //                 newBooks[index]["rating"].toString(),
              //                 style: const TextStyle(
              //                     color: headingColor,
              //                     fontSize: 15,
              //                     fontWeight: FontWeight.w400),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }
}
