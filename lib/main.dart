import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar"),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.bottomRight,
            overflow: Overflow.visible,
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.blue,
              ),
              Positioned(
                width: 200,
                height: 200,
                left: -30,
                bottom: -30,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/aamir.jpg")),
                      color: Colors.green),
                  width: 200,
                  height: 200,
                ),
              ),
              Positioned(
                width: 100,
                height: 100,
                bottom: -25,
                right: -25,
                child: Container(
                  child: Center(
                      child: Text(
                    "Hello Mr. AAMIR Khan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )),
                  width: 50,
                  height: 50,
                  color: Colors.grey[900],
                ),
              ),
              Positioned(
                top: -40,
                right: -20,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/sallu.jpg"))),
                  width: 160,
                  height: 160,
                ),
              ),
              Positioned(
                top: -20,
                left: -30,
                child: Container(
                  alignment: Alignment.center,
                  child: Center(
                    child: Text(
                      
                      "Hello Mr. Salman Khan",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  color: Colors.grey[800],
                  width: 100,
                  height: 100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
