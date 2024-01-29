
import 'package:diwamjewells/screen/Address/Add_address.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SampleItem {
  itemOne,
  itemTwo,
}

class Select_address extends StatefulWidget {
  const Select_address({super.key});

  @override
  State<Select_address> createState() => _Select_addressState();
}

class _Select_addressState extends State<Select_address> {
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Select Address (1)",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        elevation: 1,
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),color: Colors.deepOrange,
          boxShadow: const [
            BoxShadow(color: Colors.grey,spreadRadius: 1, blurRadius: 15)
          ]
        ),
        child: const Icon(Icons.local_shipping_outlined,color: Colors.white,size: 30,),
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 235, 234, 234),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Stepper(),
                Container(
                  height: 50,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 7, top: 20),
                        child: InkWell(
                            onTap: () => Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => const Add_address())),
                            child: const Icon(
                              Icons.add,
                              color: Color.fromARGB(255, 12, 80, 228),
                            )),
                      )),
                      const Expanded(
                        flex: 6,
                        child: Padding(
                          padding: EdgeInsets.only(left: 7, top: 21),
                          child: Text(
                            "Add a now address",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 12, 80, 228)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 3,),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 18, top: 18),
                                child: Text(
                                  "Bablu Das",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18, top: 5),
                                child: Text(
                                    "94,89,Laxmi Narayan Puri, aipur, Rajasthan -302005"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18, top: 10),
                                child: Text("9869961818"),
                              )
                            ],
                          )),
                      Expanded(
                        child: PopupMenuButton<SampleItem>(
                          initialValue: selectedMenu,
                          // Callback that sets the selected popup menu item.
                          onSelected: (SampleItem item) {
                            setState(() {
                              selectedMenu = item;
                            });
                          },
                          itemBuilder: (BuildContext context) =>
                              <PopupMenuEntry<SampleItem>>[
                            const PopupMenuItem<SampleItem>(
                              value: SampleItem.itemOne,
                              child: Text('Edit'),
                            ),
                            const PopupMenuItem<SampleItem>(
                              value: SampleItem.itemTwo,
                              child: Text('Remove'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Stepper extends StatefulWidget {
  const Stepper({super.key});

  @override
  State<Stepper> createState() => _StepperState();
}

class _StepperState extends State<Stepper> {
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
                      color: Colors.blue,
                    ),
                    child: const Center(
                        child: Text("1",style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),)),
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
                      color: Colors.grey,
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
                      color: Colors.grey,
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
            Padding(
              padding: EdgeInsets.only(left: 23, right: 35, top: 5, bottom: 5),
              child: Text("Address"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 35, top: 5, bottom: 5),
              child: Text("Order Summary"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
              child: Text("Payment"),
            ),
          ],
        ),
      ],
    );
  }
}
