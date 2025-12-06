import 'package:flutter/material.dart';

class Subscription extends StatelessWidget {
  const Subscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(31, 132, 205, 1),
                  Color.fromRGBO(219, 42, 107, 1),
                ],
                stops: [0.4, 0.6],
                begin: Alignment(-6.0, -1.1),
                end: Alignment(6.0, 0.8),
              ),
            ),
          ),
          Positioned.fill(
            child: Image.asset(
              "images/rectangles.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 60,
            left: 25,
          child: SizedBox(
            width: 14,
            height: 13.3,
            child: Image.asset("images/vect_back.png", fit: BoxFit.contain),
            ),
          ),
          
        ],
      ),
    );
  }
}
