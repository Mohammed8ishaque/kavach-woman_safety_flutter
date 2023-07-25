import 'dart:ui';

// import '../assets/images';

import 'package:flutter/material.dart';
import 'package:kavach2/helper_function/reusable_widgets.dart';

class VideoLib extends StatefulWidget {
  @override
  _VideoLibState createState() => _VideoLibState();
}

class _VideoLibState extends State<VideoLib> {
  TextEditingController _crimePlaceDetection = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Crime Detection and Self Defence Tips",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Self Defence',
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                logoWidget(
                                    "assets/images/Tips-and-Tricks-for-Self-defence.jpg"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Crime Rate Detection',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Enter Place',
                                style: TextStyle(
                                    fontSize: 30, fontFamily: 'RobotoMono'),
                              ),
                              // TextField(
                              //   controller: _crimePlaceDetection,
                              // ),
                              // logoWidgeta('assets/images/crime_detection.jpg'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
