import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Exercise extends StatelessWidget {
  const Exercise(
      {super.key,
      required this.color,
      required this.image,
      required this.title});
  final Color color;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(title);
      },
      child: Container(
        padding: EdgeInsets.all(2),
        height: 65,
        width: 151,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(image),
            Text(
              title,
              style:
                  GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
