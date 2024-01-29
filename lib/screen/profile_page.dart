import 'package:diwamjewells/color/app_componet_color.dart';
import 'package:diwamjewells/screen/Coupon.dart';
import 'package:diwamjewells/screen/My_card.dart';
import 'package:diwamjewells/screen/Wishlist.dart';
import 'package:diwamjewells/screen/edit_profile.dart';
import 'package:diwamjewells/screen/help_center/Help_Center.dart';
import 'package:diwamjewells/widget/Navigator/page_navigatior.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..forward();
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(3.5, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticIn,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColor.appBarCollor,
        elevation: 0.0,
        title: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "(91-9874562533)",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Hy! User",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            color: const Color.fromARGB(255, 238, 238, 238),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          //Wishlist_____________________________________________________________________________
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 0, right: 10),
                                child: SlideTransition(
                                  position: _offsetAnimation,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (context) =>
                                                  const wishlist()));
                                    },
                                    child: Container(
                                        height: 40,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.white,
                                          border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 99, 99, 99),
                                          ),
                                        ),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.favorite_border_outlined,
                                              color: Color.fromARGB(
                                                  255, 29, 25, 245),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5, right: 20),
                                              child: Text(
                                                "Wishlist",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        )),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),

                              //Help center ___________________________________________________________________________________________

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 10),
                                    child: SlideTransition(
                                      position: _offsetAnimation,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              CupertinoPageRoute(
                                                  builder: (context) =>
                                                      const Help()));
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.white,
                                            border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 99, 99, 99),
                                            ),
                                          ),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.headset_mic_outlined,
                                                color: Color.fromARGB(
                                                    255, 29, 25, 245),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 5, right: 20),
                                                child: Text(
                                                  "Help center",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 0),
                                child: SlideTransition(
                                  position: _offsetAnimation,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (context) =>
                                                  const My_card()));
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 99, 99, 99),
                                        ),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            CupertinoIcons.cube_box,
                                            color: Color.fromARGB(
                                                255, 29, 25, 245),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 5, right: 20),
                                            child: Text(
                                              "Orders",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),

                              //Coupons________________________________________________________________________
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 0),
                                    child: SlideTransition(
                                      position: _offsetAnimation,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              CupertinoPageRoute(
                                                  builder: (context) =>
                                                      const Coupon()));
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.white,
                                            border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 99, 99, 99),
                                            ),
                                          ),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.wallet_giftcard_outlined,
                                                color: Color.fromARGB(
                                                    255, 29, 25, 245),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 5, right: 20),
                                                child: Text(
                                                  "Coupons",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //Account Settings____________________________________________________________________________________________________________
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 230,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 10, bottom: 10),
                        child: Text(
                          "Account Settings",
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => const EditProfile()));
                        },
                        child: ListTile(
                          leading: const Icon(
                            Icons.person_outline_outlined,
                            color: Color.fromARGB(255, 29, 25, 245),
                            size: 22,
                          ),
                          title: Text(
                            'Edit Profile',
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromARGB(255, 97, 97, 97),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.account_balance_wallet_outlined,
                          color: Color.fromARGB(255, 29, 25, 245),
                          size: 22,
                        ),
                        title: Text(
                          'Saved Cards & Wallet',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: Color.fromARGB(255, 97, 97, 97),
                        ),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.location_on_outlined,
                          size: 22,
                          color: Color.fromARGB(255, 29, 25, 245),
                        ),
                        title: Text(
                          'Saved Addresses',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: Color.fromARGB(255, 97, 97, 97),
                        ),
                      ),
                    ],
                  ),
                ),
                //My Activity________________________________________________________________________________________________
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 10, bottom: 10),
                        child: Text(
                          "My Activity",
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.rate_review_sharp,
                          size: 22,
                          color: Color.fromARGB(255, 29, 25, 245),
                        ),
                        title: Text(
                          'Reviews',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: Color.fromARGB(255, 97, 97, 97),
                        ),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.question_answer_outlined,
                          size: 22,
                          color: Color.fromARGB(255, 29, 25, 245),
                        ),
                        title: Text(
                          'Question & Answers',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: Color.fromARGB(255, 97, 97, 97),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: AnimatedButton(
                    onPress: () {},
                    height: 55,
                    width: 300,
                    text: 'LOG OUT',
                    isReverse: true,
                    selectedTextColor: const Color.fromARGB(255, 98, 97, 160),
                    transitionType: TransitionType.LEFT_TO_RIGHT,
                    textStyle: GoogleFonts.montserrat(
                      fontSize: 18,
                      color: const Color.fromARGB(255, 253, 253, 253),
                      fontWeight: FontWeight.bold,
                    ),
                    backgroundColor: const Color.fromARGB(255, 118, 0, 253),
                    borderColor: const Color.fromARGB(255, 118, 0, 253),
                    borderRadius: 10,
                    borderWidth: 2,
                  ),
                ),
              ],
            ),
          ),
          const MyBottomNavigator(openDrawer: null),
        ],
      ),
    );
  }
}
