import 'package:diwamjewells/screen/Order_sub/Review_pages/review_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:dotted_line/dotted_line.dart';

class Order_details extends StatefulWidget {
  const Order_details({super.key});

  @override
  State<Order_details> createState() => _Order_detailsState();
}

class _Order_detailsState extends State<Order_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Details"),
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
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 226, 226, 226),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10, top: 12),
                    child: Text(
                      "Order ID - 684625854545275245524",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 155, 155, 155)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 280,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        top: 12, left: 12, right: 12),
                                    child: Text(
                                      "realme Budsd Air 3 with Fast Change & Active Noice Cancellation (ANC) Bluetooth Headset",
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontSize: 16,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 5, left: 12),
                                    child: Text(
                                      "Blue",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 12, top: 6),
                                        child: Text("₹3,499",
                                            style: TextStyle(fontSize: 18)),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 12, left: 10),
                                        child: Text("2 offers",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.green)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 12, left: 10),
                                        child: Text("Delivered",
                                            style: TextStyle(
                                              fontSize: 16,
                                            )),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 8, left: 2),
                                        child: Icon(Icons.check_outlined,
                                            color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Return policy ended on Dec 20, 2022",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 87, 87, 87)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )),
                          ]),
                      const Divider(
                        color: Color.fromARGB(255, 221, 221, 221),
                        height: 10,
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8, left: 10),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => Review_page())),
                                child: SmoothStarRating(
                                  color: Colors.orange,
                                  rating: 4,
                                  size: 30,
                                  filledIconData: Icons.star,
                                  halfFilledIconData: Icons.star_half,
                                  defaultIconData: Icons.star_border,
                                  starCount: 5,
                                  allowHalfRating: true,
                                  spacing: 8.0,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, right: 8),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Review_page())),
                              child: const Text(
                                "Write a Review",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 221, 221, 221),
                        height: 30,
                        thickness: 2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: const Center(child: Text("Need help?")),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.menu_open_outlined,
                                color: Colors.blue,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Invoice download"),
                            ),
                          ],
                        ),
                      ),
                      const Center(
                          child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 18,
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Shopping Details",
                            style: TextStyle(
                                fontSize: 11,
                                color: Color.fromARGB(255, 180, 180, 180))),
                      ),
                      Divider(
                        color: Color.fromARGB(255, 221, 221, 221),
                        height: 5,
                        thickness: 2,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18, top: 18),
                        child: Text(
                          "Bablu Das",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18, top: 5),
                        child: Text("94,89"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18, top: 5),
                        child: Text("Laxmi Narayan Puri, jaipur"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18, top: 5),
                        child: Text("Rajasthan -302005"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18, top: 5),
                        child: Text("Phone number: 9869961818"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  height: 270,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Price Details",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Color.fromARGB(255, 180, 180, 180))),
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 221, 221, 221),
                          height: 12,
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("List Price"),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Selling Price"),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Extra Price"),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Special Price"),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Shipping fee"),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Shipping Discount"),
                                ),
                              ],
                            )),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹5,999",
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹3,999",
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "-₹500",
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹3,499",
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹40",
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "-₹40",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        DottedLine(
                          direction: Axis.horizontal,
                          lineLength: double.infinity,
                          lineThickness: 1.0,
                          dashLength: 4.0,
                          dashColor: Colors.black,
                          dashGradient: const [Colors.red, Colors.blue],
                          dashRadius: 0.0,
                          dashGapLength: 4.0,
                          dashGapColor: Colors.transparent,
                          dashGapGradient: const [Colors.red, Colors.blue],
                          dashGapRadius: 0.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Total"),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("₹679")),
                          ],
                        )
                      ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
