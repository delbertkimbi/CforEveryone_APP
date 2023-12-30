import 'package:c_foreverybody/components/major/transition/page1.dart';
import 'package:c_foreverybody/components/major/transition/page2.dart';
import 'package:c_foreverybody/components/major/transition/page3.dart';
import 'package:c_foreverybody/const/appcolors.dart';
import 'package:c_foreverybody/startup.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _controller = PageController();
  bool onlastpage = false;
  TextStyle staticStyle = TextStyle(
    color: AppColors().components,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onlastpage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text(
                    "Skip",
                    style: staticStyle,
                  ),
                ),
                SmoothPageIndicator(controller: _controller, count: 3),
                onlastpage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const MyHomePage(title: "home");
                            }),
                          );
                        },
                        child: Text(
                          "Done",
                          style: staticStyle,
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(microseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text(
                          "Next",
                          style: staticStyle,
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
