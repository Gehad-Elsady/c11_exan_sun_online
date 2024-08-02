import 'package:c11_exan_sun_online/widgets/emoji.dart';
import 'package:c11_exan_sun_online/widgets/exercise.dart';
import 'package:c11_exan_sun_online/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTap extends StatelessWidget {
  const HomeTap({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 32.0, right: 32, top: 24, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hello,',
                      style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Sara Rose',
                      style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "How are you feeling today ?",
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              SizedBox(
                height: 16,
              ),
              // EMOJI row code
              Emoji(),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feature",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "See more >",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff027A48)),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              // image slider
              SliderImages(),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exercise",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "See more >",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff027A48)),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              // exercise buttons
              Row(
                children: [
                  Expanded(
                      child: Exercise(
                    color: Color(0xffF9F5FF),
                    image: "assets/images/Vector.png",
                    title: "Relaxation",
                  )),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                      child: Exercise(
                    color: Color(0xffFDF2FA),
                    image: "assets/images/Frame.png",
                    title: "Meditation",
                  )),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                      child: Exercise(
                    color: Color(0xffFFFAF5),
                    image: "assets/images/beathing.png",
                    title: "Beathing",
                  )),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                      child: Exercise(
                    color: Color(0xffF0F9FF),
                    image: "assets/images/yoga.png",
                    title: "Yoga",
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
