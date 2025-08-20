import 'package:flutter/material.dart';

class walkpage1 extends StatelessWidget {
  const walkpage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Arka plan
          Row(
            children: [
              Expanded(
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(205),
                    ),
                    color: Color.fromRGBO(99, 67, 27, 1),
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
                    color: Color.fromARGB(255, 99, 67, 27),
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
                    color: Color.fromARGB(255, 99, 67, 27),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(205),
                    ),
                    color: Color.fromARGB(255, 126, 97, 50),
                  ),
                ),
              ),
            ],
          ),

          // İçerik
          Column(
            children: [
              // Üst yarı: Resim ortada
              Expanded(
                child: Center(
                  child: Image.asset(
                    "assets/images/cockrellone.png", // resim yolu
                    width: 160,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Alt yarı: Yazı ortada
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "Welcome to Cockrel Morning!",
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
