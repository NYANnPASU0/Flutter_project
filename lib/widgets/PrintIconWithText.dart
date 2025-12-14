import 'package:flutter/material.dart';
class PrintIconWithText extends StatelessWidget {
  final String title;
  final String subtitle;

  const PrintIconWithText({
    Key? key,
    required this.title,
    required this.subtitle });
    

  @override
  Widget build(BuildContext context)
  {
    return Padding(
    padding: EdgeInsets.only(top: 16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrintIcon(),
        SizedBox(width: 18),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  //в смысле плохо что прозрачность можно задать через hex или другие кодировки цвета
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
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

Widget PrintIcon() {
  return SizedBox(
    width: 20,
    height: 20,
    child: Image.asset(
      "images/logo_like_sber.png",
      fit: BoxFit.contain,
    ),
  );
}