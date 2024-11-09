import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // intro message
              const Text(
                "Hi ,\nI'm Pandiselvam R\nA Flutter Developer",
                style: TextStyle(
                  fontSize: 30,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(height: 15),
              // contact btn
              // SizedBox(
              //   width: 250.0,
              //   child: ElevatedButton(
              //     onPressed: () {},
              //     child: const Text("Get in touch"),
              //   ),
              // ),
            ],
          ),
          // avatar img
          Flexible(
            child: Container(
              width: screenWidth / 2,
              height: screenHeight / 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage("assets/skills.png")),
              ),
              // child: Image.asset(
              //   "assets/skills.png",
              //   width: screenWidth / 2,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
