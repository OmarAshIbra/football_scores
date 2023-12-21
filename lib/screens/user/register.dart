import 'package:football_scores/screens/favorites/favorites_clubs.dart';
import 'package:football_scores/widgets/trensations_widgets.dart';
import 'package:football_scores/widgets/widgets_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'login.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShakeTransition(
                    duration: Duration(milliseconds: 900),
                    child: Text(
                      "get started",
                      style: theme.textTheme.displayLarge,
                    ),
                  ),
                  SizedBox(height: 5),
                  ShakeTransition(
                    duration: Duration(milliseconds: 1600),
                    child: Text(
                      "Create an account to continue!",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  ShakeTransition(
                    duration: Duration(milliseconds: 1800),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(
                        'assets/images/intro_2.svg',
                        height: mSize.height / 4,
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(
                child: ShakeTransition(
                  duration: Duration(milliseconds: 1600),
                  axis: Axis.vertical,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      InputUser(
                        hint: "Username",
                        icon: FontAwesomeIcons.userLarge,
                      ),
                      InputUser(
                        hint: "Email",
                        isEmail: true,
                        icon: FontAwesomeIcons.solidEnvelope,
                      ),
                      InputUserPassword(),
                    ],
                  ),
                ),
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 1800),
                axis: Axis.vertical,
                child: CardTileCondition(
                  onTap: () {
                    //TODO: open privacy policy
                  },
                ),
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 2000),
                axis: Axis.vertical,
                child: CardRegisterUser(
                  label: 'Sign up',
                  onTap: () {
                    //TODO Sign Up
                    Get.to(
                      () => FavoritesClubsScreen(),
                      transition: Transition.fadeIn,
                    );
                  },
                ),
              ),
              //TODO: LogIn
              ShakeTransition(
                duration: Duration(milliseconds: 2200),
                axis: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: InkWell(
                    onTap: () {
                      Get.to(
                        () => LogInScreen(),
                        transition: Transition.downToUp,
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account ",
                            style: theme.textTheme.titleMedium!.copyWith(
                              color: theme.primaryColor,
                            ),
                          ),
                          TextSpan(
                            text: "Sign In",
                            style: theme.textTheme.headlineSmall!.copyWith(
                              color: theme.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 2400),
                axis: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: Text(
                    "Sign up with",
                    style: theme.textTheme.headlineMedium!.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                ),
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 2600),
                axis: Axis.vertical,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Icon(
                        FontAwesomeIcons.facebook,
                        size: mSize.width * 0.12,
                        color: theme.primaryColor,
                      ),
                      onTap: () {
                        //TODO: signUp facebook
                      },
                    ),
                    SizedBox(width: 10.0),
                    InkWell(
                      child: Icon(
                        FontAwesomeIcons.google,
                        size: mSize.width * 0.12,
                        color: theme.primaryColor,
                      ),
                      onTap: () {
                        //TODO: signUp facebook
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
