import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (kIsWeb) {
            html.window.location.reload(); // This will only run on web
          } else {}
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(
                  "assets/PS_logo.jpg",
                ),
                fit: BoxFit.fill),
          ),
        ));
  }
}
