import 'package:covid_19_ui_demo/constant.dart';
import 'package:covid_19_ui_demo/info_screen.dart';
import 'package:covid_19_ui_demo/widgets/counter.dart';
import 'package:covid_19_ui_demo/widgets/my_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:developer' as devtools show log;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kBodyTextColor),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

enum Country { vietnam, china, japan, korea, france }

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const MyHeader(
              image: 'assets/icons/Drcorona.svg',
              textTop: 'All you need',
              textBottom: 'is stay at home.',
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 19),
              padding: const EdgeInsets.symmetric(
                horizontal: 19,
                vertical: 9,
              ),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(23),
                border: Border.all(
                  color: const Color(0xFFE5E5E5),
                ),
              ),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/maps-and-flags.svg'),
                  const SizedBox(
                    width: 19,
                  ),
                  Expanded(
                    child: DropdownButton(
                      underline: const SizedBox(),
                      isExpanded: true,
                      icon: SvgPicture.asset('assets/icons/dropdown.svg'),
                      value: 'Vietnam',
                      items: ['Vietnam', 'Japan', 'France']
                          .map<DropdownMenuItem<String>>(
                        (String value) {
                          devtools.log(value);
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                            onTap: () {
                              devtools.log(value);
                            },
                          );
                        },
                      ).toList(),
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Column(
                children: [
                  Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Case Update\n',
                              style: kTitleTextstyle,
                            ),
                            TextSpan(
                              text: 'Newest update March 6',
                              style: kSubTextStyle,
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'See Detail',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Container(
                    padding: const EdgeInsets.all(19),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 3),
                          blurRadius: 30,
                          color: kShadowColor,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Counter(
                          title: 'Infected',
                          number: 369,
                        ),
                        Counter(
                          color: kDeathColor,
                          title: 'Deaths',
                          number: 1179,
                        ),
                        Counter(
                          color: kRecovercolor,
                          title: 'Recovered',
                          number: 669,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Spread of Virus',
                        style: kTitleTextstyle,
                      ),
                      Text(
                        'See details',
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 9),
                    padding: const EdgeInsets.all(9),
                    width: double.infinity,
                    height: 179,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(19),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          color: kShadowColor,
                          blurRadius: 30,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/images/map.png',
                      fit: BoxFit.contain,
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
