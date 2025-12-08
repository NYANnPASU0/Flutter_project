import 'package:flutter/material.dart';

class GardientButton extends StatelessWidget {
  final String text;
  //final VoidCallback onPressed;

  const GardientButton({
    Key? key,
    required this.text,
    //this.onPressed, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      width: 375,
      height: 56,
      child: 
      Align(//что лучше align или center
        alignment: Alignment.center,
        child: ElevatedButton
        (
          onPressed:(){ print("Clicked!!!");},
          style: ElevatedButton.styleFrom
          (
            backgroundColor: Colors.transparent,
            padding: EdgeInsets.zero,//мм костыль убрали внутренние оступы кнопки чтобы разместить гардиент - контеёнер
            fixedSize: Size(343, 56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(15),
                
              ),
            ),
          ), 
          child: 
              Container(//ой-ой костыль нет нормальной покраски кнопки с помощью гардиента ink inkwell material? -  не
              width: 343,
              height: 56,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF3B3F9B),
                    const Color(0xFF7D0632),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Center(
                child: Text
                (
                    "Купить за " + text + " SC",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
          
          ),
        ),
      ),
    );
  }



}