import 'package:flutter/material.dart';

class walkpage2 extends StatelessWidget {
  const walkpage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🔹 SADECE arka planı 180 derece döndü
          Transform.rotate(
            angle: 3.1416, // pi radian (180°)
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        width: 200,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(205),
                          ),
                          color: Color.fromARGB(255, 126, 97, 50),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        width: 200,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(205),
                          ),
                          color: Color.fromARGB(255, 126, 97, 50),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(205),
                          ),
                          color: Color.fromARGB(255, 126, 97, 50),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(205),
                          ),
                          color: Color.fromARGB(255, 99, 67, 27),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          
          Column(
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    "assets/images/background.png",
                    width: 200,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "With this app, you can enjoy a deeper, healthier sleep while rediscovering the natural experience of the old days.",
                      style: const TextStyle(
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
