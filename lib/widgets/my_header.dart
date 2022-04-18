import 'package:covid_19_ui_demo/info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

class MyHeader extends StatelessWidget {
  final String image;
  final String textTop;
  final String textBottom;
  const MyHeader({
    Key? key,
    required this.image,
    required this.textTop,
    required this.textBottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: const EdgeInsets.only(top: 46, left: 39, right: 19),
        height: 350,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF3383CD),
              Color(0xFF11249F),
            ],
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/virus.png'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                child: SvgPicture.asset('assets/icons/menu.svg'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const InfoScreen();
                      },
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  SvgPicture.asset(
                    image,
                    width: 231,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                  Container(),
                  Positioned(
                    top: 36,
                    left: 150,
                    child: Text(
                      '$textTop \n$textBottom',
                      style: kHeadingTextStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
