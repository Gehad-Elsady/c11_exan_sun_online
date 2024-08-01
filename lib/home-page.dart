import 'package:c11_exan_sun_online/theme/appcolor.dart';
import 'package:c11_exan_sun_online/taps/home-tap.dart';
import 'package:c11_exan_sun_online/taps/library-tap.dart';
import 'package:c11_exan_sun_online/taps/search-tap.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'HomeScreen';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    Hometap(),
    SearchTap(),
    LibraryTap(), // Fixed typo
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: AppColor.ScaffoldColor,
          appBar: AppBar(
            leadingWidth: 70,
            titleSpacing: -10,
            leading: Image.asset(
              "assets/images/Logo Small.png",
              height: 40,
              width: 40,
            ),
            actions: [
              IconButton(
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/Setting.png",
                  ),
                  color: AppColor.PrimaryColor,
                  size: 24,
                ),
                onPressed: () {},
              ),
            ],
            title: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Audi',
                    style: TextStyle(
                      color: AppColor.PrimaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Books',
                    style: TextStyle(
                      color: AppColor.PrimaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: '.',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.white,
          ),
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColor.whiteColor,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Color(0xff6A6A8B),
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/Home.png")),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/Search.png")),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/Document.png")),
                  label: 'Library'),
            ],
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }
}
