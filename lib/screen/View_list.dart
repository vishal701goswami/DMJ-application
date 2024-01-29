import 'dart:developer';

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:velocity_x/velocity_x.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  var rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        color: const Color.fromARGB(255, 216, 216, 216),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const View();
                  },
                  staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                  mainAxisSpacing: 2.0,
                  crossAxisSpacing: 2.0,
                ),
              ),
            ]),
      ),
    );
  }
}

class View extends StatefulWidget {
  const View({super.key});

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  var rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: 80,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Center(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 18, right: 18, top: 18),
                      child: Container(
                        height: 180,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(500),
                    ),
                    child: FavoriteButton(
                      isFavorite: false,
                      // iconDisabledColor: Colors.white,
                      iconDisabledColor: Colors.grey.shade300,
                      iconSize: 35,
                      valueChanged: (isFavorite) {
                        log('Is Favorite : $isFavorite');
                      },
                    ).p(10),
                  ),
                ],
              )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 14, right: 2),
                child: Text(
                  "Karishma Kreations Adjustable Couple Rings Combo Lovers",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16, right: 12, top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '₹1000',
                      style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("204",
                        style: TextStyle(
                          fontSize: 14,
                        )),
                    SizedBox(
                      width: 8,
                    ),
                    Text("79% off",
                        style: TextStyle(fontSize: 14, color: Colors.blue)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                child: SmoothStarRating(
                  color: Colors.orange,
                  rating: 4,
                  size: 18,
                  filledIconData: Icons.star,
                  halfFilledIconData: Icons.star_half,
                  defaultIconData: Icons.star_border,
                  starCount: 5,
                  allowHalfRating: true,
                  spacing: 2.0,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 14, top: 5),
                    child: Text(
                      "Free Delivery",
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6),
                    child: Icon(
                      Icons.local_shipping_outlined,
                      color: Color.fromARGB(255, 138, 138, 138),
                    ),
                  ),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
