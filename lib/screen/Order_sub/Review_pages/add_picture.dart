import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class Review2_page extends StatefulWidget {
  Review2_page({Key? key}) : super(key: key);

  @override
  _Review2_pageState createState() => _Review2_pageState();
}

class _Review2_pageState extends State<Review2_page> {
  // final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Review Product",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Row(
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
                            padding: EdgeInsets.only(top: 12, left: 12),
                            child: Text(
                              "realme Budsd Air 3 with Fast Change & Active Noice Cancellation (ANC) Bluetooth Headset",
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 15,
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 12),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 65,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                height: 700,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 18, left: 12),
                      child: Text(
                        "Upload Photo or Video",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Container(
                            height: 45,
                            width: 140,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 240, 240, 240),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 12, left: 18),
                                    child: Icon(
                                      Icons.camera_alt_outlined,
                                      color: Colors.green,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, left: 4),
                                    child: Text(
                                      "Add Photo",
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Container(
                            height: 45,
                            width: 140,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 240, 240, 240),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 12, left: 18),
                                    child: Icon(
                                      Icons.videocam_outlined,
                                      color: Colors.green,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, left: 4),
                                    child: Text(
                                      "Add Video",
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Write a Review",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        cursorColor: Colors.grey,
                        minLines: 5,
                        maxLines: 10,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                            hintText: 'How is the product?',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Container(
        height: 45,
        width: 120,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 50, 185, 102),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
              child: Text("Submit",
                  style: TextStyle(fontSize: 20, color: Colors.white))),
        ),
      ),
    );
  }
}
