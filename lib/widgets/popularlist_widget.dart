import 'package:flutter/material.dart';
import 'package:medbook/themes/colors.dart';

// ignore: must_be_immutable
class PopularListWidget extends StatelessWidget {
  String imageUrl;
  String bookName;
  String authorName;
  String price;
  PopularListWidget({
    super.key,
    required this.imageUrl,
    required this.authorName,
    required this.bookName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ),
                color: Colors.pink,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    bookName,
                    style: const TextStyle(
                        color: headingColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    authorName,
                    style: const TextStyle(
                        color: subheadingColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w200),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.currency_rupee,
                        color: headingColor,
                        size: 20,
                      ),
                      Text(
                        price,
                        style: const TextStyle(
                            color: headingColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
