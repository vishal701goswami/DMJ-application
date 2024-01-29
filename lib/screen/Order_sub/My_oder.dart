import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class My_oders extends StatefulWidget {
  const My_oders({super.key});

  @override
  State<My_oders> createState() => _My_odersState();
}

class _My_odersState extends State<My_oders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Order"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 4),
            child: Icon(
              Icons.search_outlined,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 4, right: 15),
            child: Icon(
              Icons.shopping_cart_sharp,
              color: Colors.white,
            ),
          ),
        ],
        elevation: 1,
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Order_lists();
          }),
    );
  }
}

class Order_lists extends StatefulWidget {
  Order_lists({Key? key}) : super(key: key);

  @override
  _Order_listsState createState() => _Order_listsState();
}

class _Order_listsState extends State<Order_lists> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 150,
        width: 100,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18, left: 10),
                          child: Container(
                            height: 80,
                            width: 80,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Delivered on Dec 10, 2022",
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                                "Noice ColorFit Caliber 2 with 1.83'' display Up to 12 Day Battery, 60 sports mode Smartwatch",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle()),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: SmoothStarRating(
                                color: Colors.orange,
                                rating: 4,
                                size: 25,
                                filledIconData: Icons.star,
                                halfFilledIconData: Icons.star_half,
                                defaultIconData: Icons.star_border,
                                starCount: 5,
                                allowHalfRating: true,
                                spacing: 4.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
