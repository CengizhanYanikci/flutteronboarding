import 'package:flutter/material.dart';

class walkpage3 extends StatelessWidget {
  const walkpage3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Yatay katman (Row)
          Row(
            children: [
              Expanded(
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(205),
                    ),
                    color: Color.fromARGB(255, 99, 67, 27), // koyu kahverengi
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(205),
                    ),
                    color: Color.fromARGB(255, 99, 67, 27), // koyu kahverengi
                  ),
                ),
              ),
            ],
          ),
          // Dikey katman (Column)
          Column(
            children: [
              Expanded(
                flex: 3, // koyu kahverengi 
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(205),
                    ),
                    color: Color.fromARGB(255, 99, 67, 27), // koyu kahverengi
                  ),
                ),
              ),
              Expanded(
                flex: 35, // alt kısmı biraz küçülttük
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(205),
                    ),
                    color: Color.fromARGB(255, 126, 97, 50), // açık kahverengi
                  ),
                ),
              ),
            ],
          ),

          Column(
            children: [
              // Alt yarı: Yazı ortada
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "Throughout the night, you’ll be surrounded by the soothing sounds of crickets, wind, and other calming nature sounds.\n"
                      "And when the morning comes, a rooster alarm will wake you up naturally, helping you start your day full of energy.",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
