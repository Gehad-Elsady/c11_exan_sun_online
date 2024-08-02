import 'package:flutter/material.dart';

class Emoji extends StatelessWidget {
  const Emoji({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(4),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Color(0xffE4E7EC),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/images/love.png",
                fit: BoxFit.contain,
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Color(0xffE4E7EC),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/images/cool.png",
                fit: BoxFit.contain,
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Color(0xffE4E7EC),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/images/happy.png",
                fit: BoxFit.contain,
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Color(0xffE4E7EC),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/images/sad.png",
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Love"),
              Text("Cool"),
              Text("Happy"),
              Text("Sad"),
            ],
          ),
        )
      ],
    );
  }
}
