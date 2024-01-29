import 'package:diwamjewells/screen/Login_dmj/Login_mobile.dart';
import 'package:diwamjewells/screen/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_with_email extends StatefulWidget {
  const Login_with_email({super.key});

  @override
  State<Login_with_email> createState() => _Login_with_emailState();
}

class _Login_with_emailState extends State<Login_with_email> {
  final emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      color: const Color.fromARGB(255, 192, 192, 192),
                      child: const Center(child: Text("Diwam Jewels"))),
                  const SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                        height: 80,
                        width: 400,
                        color: const Color.fromARGB(255, 189, 189, 189)),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Log in for the best experience",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Enter your Email ID to continue",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: emailcontroller,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white12,
                          label: const Text("Email"),
                          hintStyle: const TextStyle(color: Colors.white38),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  style: BorderStyle.none))),
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return "Email Required";
                        }
                        return null;
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => Login_with_mobile())),
                          child: const Text(
                            "Use Mobile Number",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 5,
                          color: const Color.fromARGB(255, 221, 221, 221),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () => Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => HomePage())),
                            child: Container(
                              height: 55,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.red,
                              child: const Center(
                                  child: Text(
                                "Continue",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
