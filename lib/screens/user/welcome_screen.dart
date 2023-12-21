import 'package:football_scores/widgets/trensations_widgets.dart';
import 'package:football_scores/widgets/widgets_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/intro_1.svg',
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ShakeTransition(
                    duration: Duration(milliseconds: 900),
                    child: Text(
                      "Welcome to Football Scores",
                      style: theme.textTheme.displayLarge,
                    ),
                  ),
                  SizedBox(height: 10),
                  ShakeTransition(
                    duration: Duration(milliseconds: 1200),
                    child: Text(
                      "Welcome to Football Scores\nFully fledged Football Application",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 900),
                axis: Axis.vertical,
                child: CardRegisterUser(
                  label: "Welcome to Football Scores",
                  onTap: () {
                    Get.toNamed('/register');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
