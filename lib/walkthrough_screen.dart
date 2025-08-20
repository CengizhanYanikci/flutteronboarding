import 'package:cockerelalarm/walkthrough_pages/walkthrought1.dart';
import 'package:cockerelalarm/walkthrough_pages/walkthrought2.dart';
import 'package:cockerelalarm/walkthrough_pages/walkthrought3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class walkthrough extends StatefulWidget {
  const walkthrough({super.key});

  @override
  State<walkthrough> createState() => _walkthroughState();
}

class _walkthroughState extends State<walkthrough> {
  PageController _controller = PageController();
  skippage() {
    setState(() {
      _controller.jumpToPage(2);
    });
  }

  nextpage() {
    setState(() {
      _controller.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [walkpage1(), walkpage2(), walkpage3()],
          ),
          Container(
            alignment: Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ElevatedButton(
                  onPressed: skippage,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                      255,
                      55,
                      17,
                      14,
                    ), // butonun arka plan rengi
                    foregroundColor: Colors.white, // yazı rengi
                  ),
                  child: Text("Skip"),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                    activeDotColor: const Color.fromARGB(
                      255,
                      55,
                      17,
                      14,
                    ), // aktif nokta rengi
                    dotColor: Colors.grey, // pasif noktaların rengi
                    dotHeight: 12,
                    dotWidth: 12,
                    spacing: 8,
                  ),
                ),

                ElevatedButton(
                  onPressed: nextpage,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                      255,
                      55,
                      17,
                      14,
                    ), // butonun arka plan rengi
                    foregroundColor: Colors.white, // yazı rengi
                  ),
                  child: Text("Next"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
