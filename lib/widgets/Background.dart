import 'package:flutter/material.dart';
class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context)
  {
    return
    Container(
              width: double.infinity,
              height: double.infinity,
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
            ); 
  }
}