import 'package:dotted_line/dotted_line.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Order Summary"),
        ),
        body: ListView(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 235, 234, 234),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Stepper_order(),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 18, top: 15),
                          child: Text("Delover to:",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 19, right: 10),
                        child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 187, 187, 187),
                                    width: 1)),
                            child: const Center(
                                child: Text(
                              "Change",
                              style: TextStyle(color: Colors.blue),
                            ))),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 18,
                        ),
                        child: Text(
                          "Bablu Das",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18, top: 5),
                        child: Text(
                            "94,89,Laxmi Narayan Puri, aipur, Rajasthan -302005"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18, top: 10, bottom: 20),
                        child: Text("9869961818"),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const Product(),
          const SizedBox(
            height: 10,
          ),
          const Invoice(),
          const SizedBox(
            height: 10,
          ),
          Pricedetails(),
        ]),
        bottomNavigationBar:Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex:2,child:
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 8,left: 15),
                    child: Text("11,593",style:TextStyle(fontSize: 14,decoration: TextDecoration.lineThrough,color: Colors.grey) ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15,top: 5),
                    child: Text("10,201",style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600) ),
                  ),
                ],
              ), ),
              Expanded(child:
              Padding(
                padding:  const EdgeInsets.only(top: 10,bottom: 10,right: 5,),
                child: Container(
                  height: 40,
                  width:80,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.blue),
                  child: const Center(child: Text("Continue",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),)),
                ),
              )),
            ],)
        ) ,
        );
  }
}

class Stepper_order extends StatefulWidget {
  const Stepper_order({super.key});

  @override
  State<Stepper_order> createState() => _Stepper_orderState();
}

class _Stepper_orderState extends State<Stepper_order> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 214, 214, 214),
                      border: Border.all(
                          color: const Color.fromARGB(255, 18, 142, 224),
                          width: 4),
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.check_outlined,
                      color: Colors.blue,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 4,
                      width: 90,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue,
                    ),
                    child: const Center(
                        child: Text(
                      "2",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 4,
                      width: 90,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 196, 196, 196),
                    ),
                    child: const Center(
                        child: Text(
                      "3",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ],
              ),
            )
          ],
        ),
        Row(
          children: const [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 50, top: 5, bottom: 5),
                child: Text("Address"),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
                child: Text("Order Summary"),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 35, top: 5, bottom: 5),
                child: Text("Payment"),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var rating = 0.0;
  final List<String> items = [
    'Qty:1',
    'Qty:2',
    'Qty:3',
    'Qty:4',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
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
                        Container(
                          height: 80,
                          width: 80,
                          color: Colors.grey,
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            hint: Text(
                              'Qty:1',
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).hintColor,
                              ),
                            ),
                            items: items
                                .map((Qty) => DropdownMenuItem<String>(
                                      value: Qty,
                                      child: Text(
                                        Qty,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            value: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value as String;
                              });
                            },
                            
                           
                          ),
                        ),
                      ],
                    )),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "APPLE iPhone 11 (Black,64 GB)",
                            style: TextStyle(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: SmoothStarRating(
                              color: Colors.orange,
                              rating: 4,
                              size: 20,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_half,
                              defaultIconData: Icons.star_border,
                              starCount: 5,
                              allowHalfRating: true,
                              spacing: 2.0,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '₹43,900',
                                style: TextStyle(
                                    fontSize: 16,
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("₹39,999",
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text("8% off",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.blue)),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text("+ ₹69 Secured Packaging Fee",
                              style: TextStyle(
                                fontSize: 12,
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("2 offers applied *",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue)),
                              Text(" 6 offers available",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(top: 1, left: 8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Delivery by Mon Jan 9 |"),
                      Text(
                        "Free Delivery",
                        style: TextStyle(color: Colors.blue),
                      )
                    ])),
          ]),
    );
  }
}

class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.feed_rounded,
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Invoice",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text(
                "Add Email",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Pricedetails extends StatefulWidget {
  Pricedetails({Key? key}) : super(key: key);

  @override
  _PricedetailsState createState() => _PricedetailsState();
}

class _PricedetailsState extends State<Pricedetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
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
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 15),
                    child: Text(
                      "Price Details",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 16),
                    child: Text(
                      "Price (1 item)",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 15),
                    child: Text(
                      "Discount",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 15),
                    child: Text(
                      "Delivery Charges",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              )),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 55, right: 15),
                      child: Text("₹11,593"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, right: 15),
                      child: Text(
                        "-₹1,392",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, right: 15),
                      child: Text(
                        "FREE Delivery",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: DottedLine(
              direction: Axis.horizontal,
              lineLength: double.infinity,
              lineThickness: 2.0,
              dashLength: 5.0,
              dashColor: Colors.black,
              dashGradient: [Colors.red, Colors.blue],
              dashRadius: 0.0,
              dashGapLength: 3.0,
              dashGapColor: Colors.transparent,
              dashGapGradient: [Colors.red, Colors.blue],
              dashGapRadius: 0.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 8, left: 15),
                  child: Text(
                    "Total Amount",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, right: 15),
                child: Text(
                  "₹10,201",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: DottedLine(
              direction: Axis.horizontal,
              lineLength: double.infinity,
              lineThickness: 1.0,
              dashLength: 5.0,
              dashColor: Colors.black,
              dashRadius: 0.0,
              dashGapLength: 0.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8,left: 15),
            child: Text(
              "You will save ₹1025 on this order",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
