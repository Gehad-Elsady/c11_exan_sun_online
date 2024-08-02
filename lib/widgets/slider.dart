import 'package:c11_exan_sun_online/theme/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderImages extends StatefulWidget {
  @override
  _SliderImagesState createState() => _SliderImagesState();
}

class _SliderImagesState extends State<SliderImages> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 168,
          child: PageView.builder(
            controller: _pageController,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                color: Color(0xffECFDF3),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  width: 326,
                  padding: EdgeInsets.all(24.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Positive vibes",
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff344054),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Boost your mood with positive vibes",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColor.BlakeColor,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/_Play button.png",
                                  height: 24,
                                  width: 24,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "10 mins",
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.BlakeColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16),
                      Image.asset(
                        "assets/images/WalkingtheDog.png",
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10),
        SmoothPageIndicator(
          controller: _pageController,
          count: 5,
          effect: WormEffect(
            dotWidth: 8,
            dotHeight: 8,
            spacing: 16,
            radius: 8,
            dotColor: Color(0xffD9D9D9),
            activeDotColor: Color(0xff98A2B3),
          ),
        ),
      ],
    );
  }
}
