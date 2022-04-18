import 'package:covid_19_ui_demo/constant.dart';
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int number;
  final Color color;
  final String title;
  const Counter({
    Key? key,
    required this.number,
    this.color = kInfectedColor,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          width: 23,
          height: 23,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.26),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: color,
                width: 2,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          number.toString(),
          style: TextStyle(
            fontSize: 36,
            color: color,
          ),
        ),
        Text(
          title,
          style: kSubTextStyle,
        )
      ],
    );
  }
}
