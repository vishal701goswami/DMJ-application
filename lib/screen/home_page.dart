import 'dart:convert';
import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:diwamjewells/color/app_componet_color.dart';
import 'package:diwamjewells/modals/my_carosal_modal.dart';
import 'package:diwamjewells/screen/product_pages.dart';
import 'package:diwamjewells/screen/search.dart';
import 'package:diwamjewells/widget/Navigator/page_navigatior.dart';
import 'package:diwamjewells/widget/drawer/profile_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool changer = false;
  final List<String> imagesList = [];

  final List<MycarsolModal> data = [];

  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    getBannerImage();
    getPouplar();
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.8);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> getBannerImage() async {
    final response = await http
        .get(Uri.parse("https://api.diwamjewels.com/DMJ/api/v1/banner"));

    final json = jsonDecode(response.body);
    List data = json["data"];
    for (int i = 0; i < data.length; i++) {
      setState(() {
        imagesList.add(data[i]["image"]);
      });
    }

    log(imagesList.length);
  }

  Future<void> getPouplar() async {
    final response = await http.get(Uri.parse(
        "https://api.diwamjewels.com/DMJ/api/v1/products/search?query=dfsgdsf&pageSize="));

    final json = jsonDecode(response.body);
    List list = json["data"]["order"];
    for (int i = 0; i < list.length; i++) {
      setState(() {
        data.add(MycarsolModal(
            "${list[i]["images"][0]["thumbImage"]}",
            "${list[i]["name"]}",
            "₹${list[i]["images"][0]["productVariantEntities"][0]["manualPrice"]}"));
      });
    }

    log(imagesList.length);
  }

  Future<void> getProductByName() async {
    final Uri uri =
        Uri.parse("https://oyster-app-hkcep.ondigitalocean.app/login");

    final response = await http.post(
      uri.replace(queryParameters: {
        'pageSize': '0',
        'query': 'jewellery',
      }),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      // Note: No need to encode data in the body for URL parameters.
    );

    final json = jsonDecode(response.body);
    List data = json["data"];
    for (int i = 0; i < data.length; i++) {
      setState(() {
        imagesList.add(data[i]["image"]);
      });
    }

    log(imagesList.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const ProfileDrower(),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: AppColor.appBarCollor,
        title: Text(
          "Diwam Jewels",
          style: GoogleFonts.sacramento(
            color: Colors.yellow,
            fontSize: 35,
            fontWeight: FontWeight.w600,
            letterSpacing: 3,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const SearchPage()));
              },
              child: Container(
                height: 35,
                width: 45,
                decoration: BoxDecoration(
                  color: AppColor.appBarCollor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: imagesList.isEmpty
          ? Center(child: CircularProgressIndicator())
          : Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      SafeArea(
                        top: true,
                        child: CarouselSlider(
                          options: CarouselOptions(
                            height: 145,
                            autoPlay: true,
                          ),
                          items: imagesList
                              .map(
                                (item) => Center(
                                    child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 300,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://squid-app-2-7wbvi.ondigitalocean.app/$item"),
                                          fit: BoxFit.fill)),
                                )),
                              )
                              .toList(),
                        ),
                      ),
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Text(
                            "Popular Produts",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        height: 401,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: AspectRatio(
                            aspectRatio: 0.85,
                            child: PageView.builder(
                                itemCount: data.length,
                                physics: const ClampingScrollPhysics(),
                                controller: _pageController,
                                itemBuilder: (context, index) {
                                  return carouselView(index);
                                }),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          "Jewellery",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 4, right: 10, left: 10),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image:
                                      AssetImage("assets/images/banner1.jpg"))),
                        ),
                      ),
                      const Jewellery(),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          "Carpets",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 4, right: 10, left: 10),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image:
                                      AssetImage("assets/images/banner1.jpg"))),
                        ),
                      ),
                      const Jewellery(),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          "Blue Pottery, Art & Craft",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 4, right: 10, left: 10),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image:
                                      AssetImage("assets/images/banner1.jpg"))),
                        ),
                      ),
                      const Jewellery(),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),

// Navigator sections------------------------------------------------------------------
                MyBottomNavigator(
                  openDrawer: () => _scaffoldKey.currentState!.openEndDrawer(),
                ),
              ],
            ),
    );
  }

  Widget carouselView(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0.0;
        if (_pageController.position.haveDimensions) {
          value = index.toDouble() - (_pageController.page ?? 0);
          value = (value * 0.11).clamp(-1, 1);
        }
        return Transform.rotate(
          angle: pi * value,
          child: carouselCard(data[index]),
        );
      },
    );
  }

  Widget carouselCard(MycarsolModal myData) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
      child: SizedBox(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: const Offset(4, 4),
                    )
                  ]),
              child: FadeInImage(
                placeholder: const AssetImage("assets/images/spinner-8565.gif"),
                image: NetworkImage(
                    "https://squid-app-2-7wbvi.ondigitalocean.app/${myData.image}"),
                fit: BoxFit.cover,
                width: 300.0, // Adjust the width as needed
                height: 300.0, // Adjust the height as needed
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          myData.name,
                          style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                "Price: ${myData.price}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Jewellery extends StatefulWidget {
  const Jewellery({super.key});

  @override
  State<Jewellery> createState() => _JewelleryState();
}

class _JewelleryState extends State<Jewellery> {
  List<String> image = [
    "assets/images/flower-pot.jpg",
    "assets/images/image5.jpg",
    "assets/images/226.jpg",
    "assets/images/katana.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.transparent,
        child: StaggeredGridView.countBuilder(
          shrinkWrap: true,
          crossAxisCount: 2,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return ordersTab(index, image, context);
          },
          staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
      ),
    );
  }
}

Widget ordersTab(int index, List<String> image, context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => ProductPage(
                    productImage: image[index].toString(),
                    tag: '${image[index]}1',
                  )));
    },
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Hero(
                    tag: '${image[index]}1',
                    child: Image.asset(image[index].toString()),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 13.0),
              child: Text(
                "Art & Craft",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 13.0),
              child: Text(
                "Luxury Art & Craft",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 13.0, bottom: 15),
              child: Text(
                "Rs. 5,000",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
