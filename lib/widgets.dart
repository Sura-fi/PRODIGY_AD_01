import "package:flutter/material.dart";

class MyWidgets extends StatelessWidget {
      final String text;
      final int fillColor;
     final int textColor;
      final double textSize;
      final Function callBack;     
  const MyWidgets({
    super.key, 
      required this.text,
      required this.fillColor,
      this.textColor=0xFFFFFFFF,
      required this.textSize,
      required this.callBack, 
      });


  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(5),
      child: SizedBox(
        
          height:70,
          width: 70,
          child: ElevatedButton(
            onPressed: ()=> callBack(text),
        style: ElevatedButton.styleFrom(
             shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),   
                    ),
                                backgroundColor: Color(fillColor),

                  ), child:  Text(text, style:
                    TextStyle(fontSize: textSize, color: Color(textColor))),
                   
                    
          ),
          ),
    );
  }
}