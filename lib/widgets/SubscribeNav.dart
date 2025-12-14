import 'package:flutter/material.dart';

class SubscribeNav extends StatelessWidget {
  const SubscribeNav({super.key});

  @override
  Widget build(BuildContext context)
  {
    return
    Row(          
        children: [
          SizedBox(
            width: 14,
            height: 13.3,
            child: Image.asset(
              "images/vect_back.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: 50,),
          Text(
            "Управление подпиской",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w800,
            ),
          )
        ]
    );
  }
}
