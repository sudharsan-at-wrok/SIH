import 'package:flutter/material.dart';
import 'package:medbook/datas/datas.dart';
import 'package:medbook/themes/colors.dart';
import 'package:medbook/widgets/widgets.dart';

class ECommercePage extends StatelessWidget {
  const ECommercePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: bgColor,
          centerTitle: true,
          title: const Text(
            "E-Commerce",
            style: TextStyle(color: headingColor, fontSize: 25),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    child: Text(
                      "Search Your Book",
                      style: TextStyle(
                          color: headingColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search...',
                        prefixIcon: IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {},
                        ),
                        border: InputBorder.none),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TabBar(
                        labelColor: highlightColor,
                        unselectedLabelColor: subheadingColor,
                        indicatorColor: highlightColor,
                        tabs: [
                          Tab(
                            child: Text(
                              "New",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Best Seller",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 280,
                child: TabBarView(
                  children: [
                    NewListWidget(),
                    BestSellerListWidget(),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      "Most Popular",
                      style: TextStyle(
                          color: headingColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: popularBooks.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: (() {}),
                        child: PopularListWidget(
                          imageUrl: popularBooks[index]["imgUrl"],
                          bookName: popularBooks[index]["bookName"],
                          authorName: popularBooks[index]["author"],
                          price: popularBooks[index]["price"],
                          rating: popularBooks[index]["rating"],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
