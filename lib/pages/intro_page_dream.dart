import 'package:flutter/material.dart';

class IntroPageDream extends StatelessWidget {
  const IntroPageDream({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.8),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Hairs",
            style: TextStyle(
              color: Color(0xFF6C63FF),
              fontSize: 50,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 50),
          Image.asset(
            "assets/dreamer.png",
          ),
          const SizedBox(height: 50),
          const Text(
            "Arrange all Schedule",
            style: TextStyle(
                color: Color(0xFF6C63FF),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 25),
          const Text(
            "Gravida dictum fusce ut placerat orci. Netus et males fames ac turpis egestas integer eget. In ornare quam viverra orci sagittis eu volutpat odio facilisis.",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
