import 'package:flutter/material.dart';
class BackgroundTrans extends StatelessWidget {
  const BackgroundTrans({super.key});

  @override
  Widget build(BuildContext context)
  { return
    Image.asset(
              "images/rectangles.png",
              fit: BoxFit.fill,
              ); 
  }
}