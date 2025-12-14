import 'package:flutter/material.dart';
class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context)
  {
    return
    Row (
        children: [
          SizedBox(
            width: 32,
            height: 32,
            child: Image.asset(
              "images/picture_crown.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: 10,),
          Text(
            "SIMPA PREMIUM",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w800,
            ),
          ),
        ]
    );
  }
}