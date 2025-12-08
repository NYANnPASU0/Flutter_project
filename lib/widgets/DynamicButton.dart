import 'package:flutter/material.dart';

class DynamicButton extends StatelessWidget {
  //не дописано
  final String text;
  //final VoidCallback onPressed;

  const DynamicButton({
    Key? key,
    required this.text,
    //this.onPressed, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      width: 79.75,
      height: 134, //что лучше align или center
      child: ElevatedButton
      (
        onPressed:(){ print("Clicked!!!");},
        style: ElevatedButton.styleFrom
        (
          backgroundColor: Color(0x45063B80),
          fixedSize: Size(79.75, 134),
          shape: RoundedRectangleBorder
          (
            borderRadius: BorderRadius.only
            (
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(15),
            ),    
          ),
           //surfaceTintColor: Colors.transparent,
           //shadowColor: Colors.transparent
        ), 
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
      );

  }



}