import 'package:covid_19_ui_demo/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreventCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const PreventCard({
    Key? key,
    required this.image,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 9,
      ),
      child: SizedBox(
        height: 156,
        child: Stack(
          children: [
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 8),
                    blurRadius: 23,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
            Image.asset(image),
            Positioned(
              left: 136,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 19),
                width: MediaQuery.of(context).size.width - 169,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: kTitleTextstyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      text,
                      style: const TextStyle(fontSize: 12),
                      textAlign: TextAlign.justify,
                    ),
                    Align(
                      child: SvgPicture.asset('assets/icons/forward.svg'),
                      alignment: Alignment.topRight,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
