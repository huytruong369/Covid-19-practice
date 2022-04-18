import 'package:covid_19_ui_demo/constant.dart';
import 'package:flutter/material.dart';

class SymptomCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;
  const SymptomCard({
    Key? key,
    required this.image,
    required this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          isActive
              ? BoxShadow(
                  offset: const Offset(0, 10),
                  color: kActiveShadowColor,
                  blurRadius: 10,
                )
              : BoxShadow(
                  offset: const Offset(0, 3),
                  blurRadius: 6,
                  color: kShadowColor,
                ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 90,
          ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
