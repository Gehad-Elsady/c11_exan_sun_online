import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 144,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        enableInfiniteScroll: false,
      ),
      items: [
        "assets/images/Placeholder2.png",
        "assets/images/Placeholder2.png",
        "assets/images/Placeholder2.png",
        "assets/images/Placeholder2.png",
        "assets/images/Placeholder2.png",
      ].map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 204, 204, 209),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, top: 12, bottom: 12),
                      child: Image.asset(
                        height: 120,
                        width: 120,
                        imagePath,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, top: 12, bottom: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Light Mage",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff010104)),
                          ),
                          Text(
                            "Laurie Forest",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6A6A8B)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
