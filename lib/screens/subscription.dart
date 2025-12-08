import 'package:flutter/material.dart';
import 'package:laba1/widgets/GardientButton.dart';
import 'package:laba1/widgets/DynamicButton.dart';
class Subscription extends StatelessWidget {
  const Subscription({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Stack(
          children: [
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
              right: 25,
              child: Row(
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
              ),
            ),
            Positioned(
              top: 116,
              left: 69,
              child: Row (
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
              ),
            ),
          Positioned(
            top: 168,
            left: 16,
            right: 16,
            child: SizedBox(
              width: 343,
              height: 1,
              child: Image.asset("images/line.png",
                fit: BoxFit.contain,),
              ),
            ),
            //сюда можешь вставлять код свой , и после стека тоже(если надо будет)
            Positioned(
              top: 335,
              left: 16,
              right: 16,
              child: SizedBox(
                width: 343,
                height: 1,
                child: Image.asset("images/line.png",
                  fit: BoxFit.contain,),
              ),
            ),
            Positioned
            (
                top:351,
                left: 16,
                child: Column(
                  children: [
                    _print_logo(),
                    Padding(
                    padding: EdgeInsets.only(top: 53),
                    child: _print_logo(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 37),
                      child: _print_logo(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 55),
                      child: _print_logo(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 37),
                      child: _print_logo(),
                    ),
                        GardientButton(text: 'попа'),//создание кнопки
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}

Widget _print_logo() {
  return SizedBox(
    width: 20,
    height: 20,
    child: Image.asset(
      "images/logo_like_sber.png",
      fit: BoxFit.contain,
    ),
  );
}