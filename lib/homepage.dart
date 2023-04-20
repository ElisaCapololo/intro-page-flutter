import 'package:flutter/material.dart';
import 'package:hairs/pages/intro_page_connection.dart';
import 'package:hairs/pages/intro_page_dream.dart';
import 'package:hairs/pages/intro_page_winners.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final controller = PageController();

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
        children: const <Widget>[
          IntroPageDream(),
          IntroPageConnection(),
          IntroPageWinners(),
        ],
      ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0.5),
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => controller.previousPage(
                duration: const Duration(milliseconds: 500), 
                curve: Curves.easeInOut,
              ),
              icon: const Icon(Icons.arrow_back_outlined,
              color: Color(0xFF6C63FF),
              ),
            ),
            //Page indicator
            Center(
              child: SmoothPageIndicator(
                controller: controller, 
                count: 3,
                effect: const SwapEffect(
                  type: SwapType.yRotation,
                  activeDotColor: Color(0xFF6C63FF)
                  ),
                onDotClicked: (index) => controller.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                ),
              ),
            ),
             IconButton(
              onPressed: () => controller.nextPage(
                duration: const Duration(milliseconds: 500), 
                curve: Curves.easeInOut,
              ),
              color: const Color(0xFF6C63FF),
              icon: const Icon(Icons.arrow_forward,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
