import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:c11_exan_sun_online/taps/home.dart';
import 'package:c11_exan_sun_online/taps/test.dart';
import 'package:c11_exan_sun_online/theme/appcolor.dart';
import 'package:badges/badges.dart' as badges;

class HomePage extends StatefulWidget {
  static const String routeName = 'HomeScreen';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  int selectedIndex = 0;

  final List<Widget> tabs = [
    HomeTap(),
    Test(),
    Test(),
    Test(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        leadingWidth: 70,
        titleSpacing: 0,
        leading: Image.asset(
          "assets/images/logo.png",
          height: 40,
          width: 40,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32.0),
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: 3, end: 3),
              badgeStyle: badges.BadgeStyle(
                shape: badges.BadgeShape.circle,
                badgeColor: Colors.red,
                padding: EdgeInsets.all(4),
              ),
              child: Icon(
                Icons.notifications_none_outlined,
                size: 30,
              ),
            ),
          )
        ],
        title: Text(
          "Moode",
          style: TextStyle(
              fontFamily: "kefa", fontSize: 24, fontWeight: FontWeight.w400),
        ),
        backgroundColor: Colors.white,
      ),

      /// can not make the "." under the icon using label so found that bottomNavigationBar
      /// tack widget so i customize the bar to look like UI make set stat to update the
      /// index to effect on the indicator when navigate between pages that what i found please
      /// if there is an easy solution to make it please not me about that thanks
      bottomNavigationBar: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColor.whiteColor,
            selectedItemColor: AppColor.PrimaryColor,
            unselectedItemColor: Color(0xff667085),
            currentIndex: selectedIndex,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/Home.png")),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/grid-01.png")),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/calendar.png")),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/user-03.png")),
                label: '',
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 50, bottom: 5),
            color: Colors.white,
            child: SmoothPageIndicator(
              controller: PageController(
                initialPage: selectedIndex,
              ),
              count: tabs.length,
              effect: WormEffect(
                activeDotColor: AppColor.PrimaryColor,
                dotColor: AppColor.whiteColor,
                dotHeight: 8,
                dotWidth: 8,
                spacing: 94,
              ),
            ),
          ),
        ],
      ),
      body: tabs[selectedIndex],
    );
  }
}
