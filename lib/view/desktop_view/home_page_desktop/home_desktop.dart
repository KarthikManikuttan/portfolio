import 'package:flutter/material.dart';
import 'package:portfolio/widgets/meteor.dart';

import 'components/custom_header.dart';
import 'components/heading_text.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MeteorShower(
        numberOfMeteors: 30,
        duration: Duration(seconds: 20),
        child: Column(
          children: [
            CustomHeader(),
            SizedBox(height: 80),
            HeadingText(),
          ],
        ),
      ),
    );
  }
}
