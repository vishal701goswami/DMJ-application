import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

enum SingingCharacter {
  upi,
  wallet,
  Creditandcards,
  netbanking,
  cashondelivery
}

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  SingingCharacter? _character = SingingCharacter.upi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payments"),
      ),
      body: ListView(
        children: [
          Stepper_order(),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 238, 238, 238),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 105,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(13),
                        child: Text(
                          "All other options",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Radio<SingingCharacter>(
                                  value: SingingCharacter.upi,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter? value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 16, left: 5),
                                  child: Text("UPI"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Radio<SingingCharacter>(
                        value: SingingCharacter.wallet,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16, left: 5),
                        child: Text("Wallet"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Radio<SingingCharacter>(
                            value: SingingCharacter.Creditandcards,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 16, left: 5),
                            child: Text("Credit / Debit / ATM Card"),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 38),
                        child: Text(
                          "Add and secure your card as per RBI guidelines",
                          style: TextStyle(
                              color: Color.fromARGB(255, 175, 173, 173)),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Radio<SingingCharacter>(
                        value: SingingCharacter.netbanking,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16, left: 5),
                        child: Text("Net Banking"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Radio<SingingCharacter>(
                        value: SingingCharacter.cashondelivery,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16, left: 5),
                        child: Text("Cash on Delivery"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 13, left: 20),
                        child: Text(
                          "PRICE DETAILS",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 20, top: 9),
                                child: Text("Price(1 item)"),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(9.0),
                              child: Text("₹10,201"),
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 20, top: 3),
                                child: Text("Delivery Charges"),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 9, top: 3),
                              child: Text(
                                "Free",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ]),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 10, top: 10),
                        child: DottedLine(
                          direction: Axis.horizontal,
                          lineLength: double.infinity,
                          lineThickness: 2.0,
                          dashLength: 5.0,
                          dashColor: Colors.black,
                          dashGradient: const [Colors.red, Colors.blue],
                          dashRadius: 0.0,
                          dashGapLength: 3.0,
                          dashGapColor: Colors.transparent,
                          dashGapGradient: const [Colors.red, Colors.blue],
                          dashGapRadius: 0.0,
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 20, top: 3),
                                child: Text(
                                  "Amount Payable",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 9, top: 3),
                              child: Text(
                                "₹10,201",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 30),
                      child: Image.asset('assets/images/visa_icon.png',
                          scale: 10.8),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Image.asset('assets/images/mastercard_icon.png',
                          scale: 10.8),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Image.asset('assets/images/rupay_icon.png',
                          scale: 10.8),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 33, left: 10),
                      child: Image.asset('assets/images/pci.png', scale: 15.8),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 10),
                      child: Image.asset('assets/images/razorpay-icon.png',
                          scale: 8.8),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: Text("40,068", style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  right: 5,
                ),
                child: Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                  child: const Center(
                      child: Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  )),
                ),
              )),
            ],
          )),
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
                      color: const Color.fromARGB(255, 255, 240, 240),
                      border: Border.all(
                          color: const Color.fromARGB(255, 18, 142, 224),
                          width: 3),
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
                padding: EdgeInsets.only(right: 18),
                child: Center(child: Text("Address")),
              ),
            ),
            Expanded(
              child: Center(child: Text("Order Summary")),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 18),
                child: Center(child: Text("Payment")),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class image extends StatefulWidget {
  const image({super.key});
  @override
  State<image> createState() => _imageState();
}

class _imageState extends State<image> {
  final List<String> imagesList = [
    "assets/images/pay1.png",
    "assets/images/pay2.png",
    "assets/images/pay3.png",
    "assets/images/pay4.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SafeArea(
              top: true,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 20,
                  autoPlay: true,
                ),
                items: imagesList
                    .map(
                      (item) => Center(
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          height: 20,
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
