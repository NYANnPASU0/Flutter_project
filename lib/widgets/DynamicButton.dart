import 'package:flutter/material.dart';
 class DynamicButton extends StatefulWidget {
  final String strprice;
  final String title1;
  final String title2;
  final String selectedText;
  final ValueChanged<String> onSelect;

  DynamicButton({
    super.key,
    required this.strprice,
    required this.title1,
    required this.title2,
    required this.selectedText,
    required this.onSelect,});
  @override
  _DynamicButtonState createState() => _DynamicButtonState();
}
class _DynamicButtonState extends State<DynamicButton>
{
  @override
  Widget build(BuildContext context)
  {
    //опредялет можно ли нажать кнопку повторно
    final bool isSelected = widget.selectedText == widget.strprice;
    return 
    Container(
      width: 79.75,
      height: 134,
      decoration: isSelected 
          ? BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(2),
                bottomRight: Radius.circular(16),
              ),
              // ТЕНЬ 
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.4),
                  blurRadius: 0.0,     // Размытие
                  spreadRadius: 0.5,    // Распространение - создает "выпирающий" эффект
                  offset: Offset(8, 8), // Смещение вниз
                ),
              ],
            )
          : null,
          child :
      ElevatedButton
        (
        //если кнопка нажата то передаем текст в родителя
        
        onPressed:isSelected ? null : () => widget.onSelect(widget.strprice),
        style: ElevatedButton.styleFrom
          (
            padding: EdgeInsets.zero,
          backgroundColor: const Color.fromRGBO(69, 6, 59, 0.5),
           disabledBackgroundColor: const Color.fromRGBO(163, 35, 142, 1.0), 
          fixedSize: Size(79.75, 134),
          shape: RoundedRectangleBorder
            (
            borderRadius: BorderRadius.only
              (
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(2),
              bottomRight: Radius.circular(16),
              
            ),
            
            side: isSelected
            ? const BorderSide(color: Color.fromRGBO(255, 122, 233, 1), width: 4)
            : BorderSide.none
            
          ),
          //surfaceTintColor: Colors.transparent,
          //shadowColor: Colors.transparent
        ),
        child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text
                (
                widget.title1,
                style: TextStyle(
                  color: isSelected ? Colors.white : Color.fromRGBO(255, 255, 255, 0.8),
                  fontSize: 24,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                ),
                ),
                Text
                (
                widget.title2,
                style: TextStyle(
                  color: isSelected ? Colors.white : Color.fromRGBO(255, 255, 255, 0.8),
                  fontSize: 13,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  
                ),
                
                ),
                SizedBox(height: 16),
                Opacity(
                opacity: isSelected ? 1 : 0.1, // от 0.0 (полностью прозрачный) до 1.0 (полностью непрозрачный)
                child: Image.asset("images/rectangle_2074.png"),
                ),
                SizedBox(height: 16),
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("images/coin.png",
                    width: 18,
                    height: 18,
                    ),
                    SizedBox(width: 4),
                    Text
                    (
                    widget.strprice,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Color.fromRGBO(255, 255, 255, 0.8),
                      fontSize: 18,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                    ),
                
                    )
                  ]
                )

              ],
            )
        )
      );
  }
}

