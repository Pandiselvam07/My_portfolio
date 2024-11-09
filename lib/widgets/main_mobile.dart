import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 30.0,
      ),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // avatar img
          // ShaderMask(
          //   shaderCallback: (bounds) {
          //     return LinearGradient(colors: [
          //       CustomColor.scaffoldBg.withOpacity(0.6),
          //       CustomColor.scaffoldBg.withOpacity(0.6),
          //     ]).createShader(bounds);
          //   },
          //   blendMode: BlendMode.srcATop,
          Flexible(
            child: Container(
              width: screenWidth / 2,
              height: screenHeight / 4,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.all(Radius.circular(50)),
              //   image: DecorationImage(
              //       fit: BoxFit.fill, image: AssetImage("assets/skills.png")),
              // ),
              // child: Image.asset(
              //   "assets/my_flutter_avatar.png",
              //   width: screenWidth / 2,
              // ),
            ),
          ),
          const SizedBox(height: 30),
          // intro message
          const Text(
            "Hi,\nI'm Pandiselvam R\nA Flutter Developer",
            style: TextStyle(
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 15),
          // contact btn
          // SizedBox(
          //   width: 190.0,
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     child: const Text("Get in touch"),
          //   ),
          // )
        ],
      ),
    );
  }
}
