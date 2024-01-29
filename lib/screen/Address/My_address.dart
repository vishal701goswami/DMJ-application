import 'package:diwamjewells/screen/Address/Add_address.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SampleItem {
  itemOne,
  itemTwo,
}

class My_Address extends StatefulWidget {
  const My_Address({super.key});

  @override
  State<My_Address> createState() => _My_AddressState();
}

class _My_AddressState extends State<My_Address> {
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            color: const Color.fromARGB(255, 235, 234, 234),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const Add_address())),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(left: 7, top: 20),
                                child: Icon(
                                  Icons.add,
                                  color: Color.fromARGB(255, 12, 80, 228),
                                ))),
                        Expanded(
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
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 35, bottom: 5),
                  child: Text(
                    "1 SAVED ADDRESS",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
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
                                    "94,89,Laxmi Narayan Puri, jaipur, Rajasthan -302005"),
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
