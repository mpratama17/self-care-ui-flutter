import 'package:coba_1/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeelingWidget extends StatelessWidget {
   FeelingWidget({super.key, required this.emoji, required this.title});

  String emoji;
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(emoji,
         style: GoogleFonts.roboto(fontSize: 28)),
         padding: EdgeInsets.all(10),
         decoration: BoxDecoration(
          color: Constants.grey,
          shape: BoxShape.circle,
         ),
        ),
        SizedBox(height: 10),
        Text(title, style: GoogleFonts.roboto(color: Colors.grey))
      ],
    );
  }
}