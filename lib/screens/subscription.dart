import 'package:flutter/material.dart';
import 'package:laba1/widgets/GardientButton.dart';
import 'package:laba1/widgets/Background.dart';
import 'package:laba1/widgets/BackgroundTrans.dart';
import 'package:laba1/widgets/SubscribeNav.dart';
import 'package:laba1/widgets/Logo.dart';
import 'package:laba1/widgets/SubInfo.dart';
import 'package:laba1/widgets/Line.dart';
import 'package:laba1/widgets/DynamicButton.dart';

class Subscription extends StatefulWidget {
  @override
  State<Subscription> createState() => _SubscriptionState();
}
class _SubscriptionState extends State<Subscription>
{
  String _selectedButtonText = "10";

  // Метод для обновления состояния, передаваемый дочерним элементам
  //кнопочкам вверху
  void _updateSelection(String buttonText) {
    setState(() {
      _selectedButtonText = buttonText;
    });
  } 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Background(),
            Positioned.fill(
              child: BackgroundTrans()
            ),
            Positioned(
              top: 60,
              left: 25,
              right: 25,
              child: SubscribeNav()
            ),
            Positioned(
              top: 116,
              left: 69,
              child: Logo()
            ),
            Positioned(
              top: 168,
              left: 16,
              right: 16,
              child: Line()
            ),
            Positioned(
              top: 335,
              left: 16,
              right: 16,
              child: SubInfo()
            ),

            Positioned(
              top: 335,
              left: 16,
              right: 16,
              child: Line(),
            ),
            Positioned(
              top: 674,
              left: 16,
              right: 16,
              child: Line()
            ),
            Positioned(
              top: 174,
              left: 16,
              right: 16,
              child:
            Container(
              padding: EdgeInsets.zero,
              width: 343,
              height: 143,
              child:
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            DynamicButton
            (
              strprice: '10',
              title1: '3',
              title2: 'дня',
              selectedText: _selectedButtonText,
              onSelect: _updateSelection,
            ),
            DynamicButton
            (
              strprice: '20',
              title1: '7',
              title2: 'дней',
              selectedText: _selectedButtonText,
              onSelect: _updateSelection,
            ),
            DynamicButton
            (
              strprice: '75',
              title1: '30',
              title2: 'дней',
              selectedText: _selectedButtonText,
              onSelect: _updateSelection,
            ),
            DynamicButton
            (
              strprice: '200',
              title1: '90',
              title2: 'дней',
              selectedText: _selectedButtonText,
              onSelect: _updateSelection,
            ),
            ],
            ),
            ),
            ),
            Positioned(
              top: 734,
              left: 16,
              right: 16,
              child: GardientButton(text: _selectedButtonText)
            ),
          ]
        ),
      ),
    );
  }
}
