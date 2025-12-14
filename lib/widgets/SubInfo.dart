import 'package:flutter/material.dart';
import 'package:laba1/widgets/PrintIconWithText.dart';

class SubInfo extends StatelessWidget {
  const SubInfo({super.key});

  @override
  Widget build(BuildContext context)
  {
    return
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrintIconWithText(
          title: "Режим невидимки",
          subtitle: "Становитесь невидимыми для других пользователей, когда вы онлайн"
        ),
        PrintIconWithText(
          title: "X2 монет от просмотра рекламы",
          subtitle: "Просмотр контента за двойной тариф"
        ),
        PrintIconWithText(
          title: "Стикер-паки",
          subtitle: "Доступ к эксклюзивным наборам стикеров для выражения своих эмоций"
        ),
        PrintIconWithText(
          title: "Кто добавил меня в избранное",
          subtitle: "Смотрите, кто добавил ваш профиль в избранное"
        ),
        PrintIconWithText(
          title: "До 20 приглашений на свидание",
          subtitle: "Отправляйте приглашения до 20 новым людям в день"
        ),
      ],
    );
  }
}