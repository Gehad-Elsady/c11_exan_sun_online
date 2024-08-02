import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<String> categories = [
    'Art',
    'Business',
    'Comedy',
    'Drama',
    'Action',
  ];
  int? value;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 5.0,
        children: List<Widget>.generate(
          categories.length,
          (int index) {
            return Padding(
              padding: const EdgeInsets.only(
                right: 8,
                left: 8,
                top: 16,
              ),
              child: ChoiceChip(
                label: Text(
                  categories[index],
                  style: GoogleFonts.poppins(
                      color: value == index ? Colors.white : Color(0xff3B3B3B),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                selected: value == index,
                backgroundColor: Color.fromARGB(255, 224, 224, 228),
                selectedColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                side: BorderSide.none,
                onSelected: (bool selected) {
                  setState(() {
                    value = selected ? index : null;
                  });
                },
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
