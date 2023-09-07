import 'package:flutter/material.dart';
import 'package:medbook/themes/colors.dart';
import 'package:medbook/widgets/widgets.dart';

// ignore: must_be_immutable
class PopularListWidget extends StatelessWidget {
  String imageUrl;
  String bookName;
  String authorName;
  String price;

  double rating;
  PopularListWidget({
    super.key,
    required this.imageUrl,
    required this.authorName,
    required this.bookName,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ),
                color: Colors.pink,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      bookName,
                      style: const TextStyle(
                          color: headingColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      authorName,
                      style: const TextStyle(
                          color: subheadingColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.currency_rupee,
                        color: headingColor,
                        size: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          price,
                          style: const TextStyle(
                              color: headingColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      const Spacer(),
                      IconTheme(
                        data: const IconThemeData(
                          color: Colors.amber,
                          size: 15,
                        ),
                        child: StarDisplay(value: rating),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: Text(
                          rating.toString(),
                          style: const TextStyle(
                              color: headingColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
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
