import 'package:flutter/material.dart';
class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context)
  {
    return
    SizedBox(
                width: 343,
                height: 1,
                child: Image.asset("images/line.png",
                  fit: BoxFit.contain,),
            );
  }
}