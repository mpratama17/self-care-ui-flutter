import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PracticeWidget extends StatelessWidget {
  PracticeWidget({
    super.key,
    required this.emoji,
    required this.title,
    required this.color,
    required this.time,

    
    });

  String emoji;
  String title;
  Color color;
  int time;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: color
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Text(emoji, style: TextStyle(fontSize: 25),
                ),
                decoration: ShapeDecoration(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                    
                  ),
                  color: Colors.white
                ),
                padding: EdgeInsets.all(8),
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(title, style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '$time min',
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 11
                    ),
                  )
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              )
            ],
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      padding: EdgeInsets.all(20),
    );
  }
}