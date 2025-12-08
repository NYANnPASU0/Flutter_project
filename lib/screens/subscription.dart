import 'package:flutter/material.dart';
import 'package:laba1/widgets/GardientButton.dart';
import 'package:laba1/widgets/DynamicButton.dart';

class Subscription extends StatelessWidget {
  const Subscription({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
            Positioned(
              top: 335,
              left: 16,
              right: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _printLogoWithText(
                    title: "Режим невидимки",
                    subtitle: "Становитесь невидимыми для других пользователей, когда вы онлайн"
                  ),
                  _printLogoWithText(
                    title: "X2 монет от просмотра рекламы",
                    subtitle: "Просмотр контента за двойной тариф"
                  ),
                  _printLogoWithText(
                    title: "Стикер-паки",
                    subtitle: "Доступ к эксклюзивным наборам стикеров для выражения своих эмоций"
                  ),
                  _printLogoWithText(
                    title: "Кто добавил меня в избранное",
                    subtitle: "Смотрите, кто добавил ваш профиль в избранное"
                  ),
                  _printLogoWithText(
                    title: "До 20 приглашений на свидание",
                    subtitle: "Отправляйте приглашения до 20 новым людям в день"
                  ),
                ],
              ),
            ),

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
            Positioned(
              top: 674,
              left: 16,
              right: 16,
              child: SizedBox(
                width: 343,
                height: 1,
                child: Image.asset("images/line.png",
                  fit: BoxFit.contain,),
              ),
            ),
            //тут кнопка
            Positioned(
              top: 704,
              left: 16,
              right: 16,
              child: GardientButton(text: 'попа'),
              ),
          ],
        ),
      ),
    );
  }
}

Widget _printLogoWithText({
  required String title,
  required String subtitle,
}) {
  return Padding(
    padding: EdgeInsets.only(top: 16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _printLogo(),
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

Widget _printLogo() {
  return SizedBox(
    width: 20,
    height: 20,
    child: Image.asset(
      "images/logo_like_sber.png",
      fit: BoxFit.contain,
    ),
  );
}