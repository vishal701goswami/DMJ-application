import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Account_Related extends StatefulWidget {
  const Account_Related({super.key});

  @override
  State<Account_Related> createState() => _Account_RelatedState();
}

class _Account_RelatedState extends State<Account_Related> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: (() => Navigator.of(context).pop()),
              icon: const Icon(Icons.arrow_back_rounded),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Text(
                "Account Related Queries",
                style: GoogleFonts.montserrat(
                    fontSize: 17, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 4),
            child: Icon(
              Icons.search_outlined,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5, top: 4, right: 5),
            child: Icon(
              Icons.shopping_cart_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 238, 238, 238),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text('What issue are you facing?',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 15),
                            child: Text(
                              "I want to change my DMJ account password",
                              style: TextStyle(
                                  fontSize: 14,
                                  // fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 37, 37, 37)),
                            ),
                          ),
                        ]),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: Color.fromARGB(255, 97, 97, 97),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 15),
                            child: Text(
                              "I want to change/update my registration phone number",
                              style: TextStyle(
                                  fontSize: 14,
                                  // fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 37, 37, 37)),
                            ),
                          ),
                        ]),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: Color.fromARGB(255, 97, 97, 97),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 15),
                            child: Text(
                              "I want to change my registered emainl address",
                              style: TextStyle(
                                  fontSize: 14,
                                  // fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 37, 37, 37)),
                            ),
                          ),
                        ]),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: Color.fromARGB(255, 97, 97, 97),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 15),
                            child: Text(
                              "I want to create my DMJ account",
                              style: TextStyle(
                                  fontSize: 14,
                                  // fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 37, 37, 37)),
                            ),
                          ),
                        ]),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: Color.fromARGB(255, 97, 97, 97),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 15),
                            child: Text(
                              "I want to deactivate my DMJ account",
                              style: TextStyle(
                                  fontSize: 14,
                                  // fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 37, 37, 37)),
                            ),
                          ),
                        ]),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: Color.fromARGB(255, 97, 97, 97),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 15),
                            child: Text(
                              "I want to reactivate my DMJ account",
                              style: TextStyle(
                                  fontSize: 14,
                                  // fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 37, 37, 37)),
                            ),
                          ),
                        ]),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: Color.fromARGB(255, 97, 97, 97),
                      ),
                    ),
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
