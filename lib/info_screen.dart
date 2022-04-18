import 'package:covid_19_ui_demo/constant.dart';
import 'package:covid_19_ui_demo/widgets/my_header.dart';
import 'package:covid_19_ui_demo/widgets/prevent_card.dart';
import 'package:covid_19_ui_demo/widgets/symptom_card.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const MyHeader(
              image: 'assets/icons/coronadr.svg',
              textTop: 'Get to know',
              textBottom: 'About Covid-19',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Symptoms',
                    style: kTitleTextstyle,
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SymptomCard(
                        image: 'assets/images/headache.png',
                        title: 'Headache',
                        isActive: true,
                      ),
                      SymptomCard(
                        image: 'assets/images/fever.png',
                        title: 'Fever',
                      ),
                      SymptomCard(
                        image: 'assets/images/caugh.png',
                        title: 'Caugh',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  const Text(
                    'Prevention',
                    style: kTitleTextstyle,
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  const PreventCard(
                    title: 'Wear face mask',
                    image: 'assets/images/wear_mask.png',
                    text:
                        'Since the start of the coronavirus outbreak some places have fully embraced working facemasks',
                  ),
                  const PreventCard(
                    title: 'Wash hands',
                    image: 'assets/images/wash_hands.png',
                    text:
                        'Since the start of the coronavirus outbreak some places have fully embraced working facemasks',
                  ),
                  const SizedBox(
                    height: 39,
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
