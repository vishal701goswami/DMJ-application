import 'package:flutter/material.dart';

class About_us extends StatefulWidget {
  const About_us({super.key});

  @override
  State<About_us> createState() => _About_usState();
}

class _About_usState extends State<About_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        backgroundColor: const Color.fromARGB(255, 150, 38, 237),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 170,
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Image.asset(
                  'assets/images/picture3.jpg',
                  height: 200,
                  width: double.infinity,
                  scale: 1.5,
                ),
              ),
            ),
            const Text(
              "Established in 2011, BlueStone is India's leading destination for high quality fine jewellery with strikingly exquisite designs. We aim at revolutionizing the fine jewellery and lifestyle segment in India with a firm focus on craftsmanship, quality and customer experience. In a short span of time, BlueStone has built a large family of loyal consumers in India and abroad",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
