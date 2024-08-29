
import 'package:flutter/material.dart';

class RoundButtonWidget extends StatefulWidget {

  final double height, width;
  final String title;
  final Color buttonColor,textColor;
  final VoidCallback onPressed;

  const RoundButtonWidget({super.key,required this.height,required this.width,required this.title,this.buttonColor = Colors.blue,this.textColor =Colors.white, required this.onPressed,});

  @override
  State<RoundButtonWidget> createState() => _RoundButtonWidgetState();
}

class _RoundButtonWidgetState extends State<RoundButtonWidget> {
  @override
  Widget build(BuildContext context) {

    return  InkWell(

      onTap: widget.onPressed,
      child: Container(

        width: widget.width,
           height: widget.height,
           decoration: BoxDecoration(
             color: widget.buttonColor,
             borderRadius: BorderRadius.circular(20)
           ),
        child: Center(child: Text(widget.title,style: TextStyle(
          color: widget.textColor,

        ),),),
      ),
    );
  }
}
