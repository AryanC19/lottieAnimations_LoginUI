// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_animations/simple_animations.dart';

class AnimatedLandingPage extends StatelessWidget {
  const AnimatedLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 800,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 380,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 30,
                        width: 100,
                        height: 200,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/light-1.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 150,
                        width: 80,
                        height: 150,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/light-2.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 40,
                        width: 60,
                        height: 60,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/clock.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 200,
                        left: 20,
                        width: 150,
                        height: 150,
                        child: Container(
                          child: Lottie.network(
                              'https://lottie.host/84885d3c-0282-4de3-a68e-b6acb0ac3b64/QcehLOUnLa.json'),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                  fontFamily: "Billabong",
                                  fontSize: 70,
                                  color: Color.fromARGB(255, 77, 14, 194),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(143, 158, 251, 1),
                                blurRadius: 20.0,
                                offset: Offset(0, 8)),
                          ],
                        ),
                        child: SafeArea(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email or Phone Number",
                                    hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(143, 148, 251, 1),
                              Color.fromRGBO(143, 148, 251, .6),
                            ],
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            // Add your button click action here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors
                                .transparent, // Make the button transparent
                            shadowColor:
                                Colors.transparent, // Remove button shadow
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 120,
                            width: 120,
                            child: Lottie.network(
                                'https://lottie.host/c9d2db00-4fdd-4bde-be32-afda046a460d/ZN8cARs9Ik.json'),
                          ),
                          SizedBox(width: 110),
                          SizedBox(
                            height: 120,
                            width: 120,
                            child: Lottie.network(
                                'https://lottie.host/32f7110e-60da-4a0c-9d5a-6a07be09a001/5FY5tB9UQ8.json'),
                          ),
                        ],
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
