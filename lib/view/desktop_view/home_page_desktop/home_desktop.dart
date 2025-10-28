import 'package:flutter/material.dart';
import 'package:portfolio/widgets/meteor.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MeteorShower(
        numberOfMeteors: 30,
        duration: Duration(seconds: 20),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: Text(
            "M S KARTHIK",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ),
    );
  }
}
