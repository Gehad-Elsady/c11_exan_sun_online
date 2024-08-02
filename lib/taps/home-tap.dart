// ignore_for_file: file_names, prefer_const_constructors_in_immutables

import 'package:c11_exan_sun_online/theme/appcolor.dart';
import 'package:c11_exan_sun_online/sliders/best-seller-slider.dart';
import 'package:c11_exan_sun_online/sliders/catigories.dart';
import 'package:c11_exan_sun_online/sliders/imageslider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hometap extends StatelessWidget {
  Hometap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 24.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "See more",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColor.PrimaryColor),
                  )
                ],
              ),
              const Categories(),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended For You",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "See more",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColor.PrimaryColor),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const ImageSlider(),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Seller",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "See more",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColor.PrimaryColor),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const BestSeller()
            ],
          ),
        ),
      ),
    );
  }
}
