import 'package:football_scores/screens/user/register.dart';

import 'package:football_scores/widgets/trensations_widgets.dart';
import 'package:football_scores/widgets/widgets_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class RestPasswordScreen extends StatefulWidget {
  @override
  _RestPasswordScreenState createState() => _RestPasswordScreenState();
}

class _RestPasswordScreenState extends State<RestPasswordScreen> {
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
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShakeTransition(
                      duration: Duration(milliseconds: 900),
                      child: Text(
                        "Forgot Password",
                        style: theme.textTheme.displayLarge,
                      ),
                    ),
                    SizedBox(height: 5),
                    ShakeTransition(
                      duration: Duration(milliseconds: 1200),
                      child: Text(
                        "Don't worry! We can help you",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 1800),
                child: SvgPicture.asset(
                  'assets/images/intro_4.svg',
                  height: mSize.height / 4,
                ),
              ),
              Flexible(
                child: ShakeTransition(
                  duration: Duration(milliseconds: 2000),
                  axis: Axis.vertical,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      InputUser(
                        hint: "Email",
                        isEmail: true,
                        icon: FontAwesomeIcons.solidEnvelope,
                      ),
                    ],
                  ),
                ),
              ),

              ShakeTransition(
                duration: Duration(milliseconds: 2600),
                axis: Axis.vertical,
                child: CardRegisterUser(
                  label: "send password",
                  onTap: () {
                    //TODO Sign Up
                    // Get.to(
                    //       () => RegisterScreen(),
                    //   transition: Transition.rightToLeft,
                    // );
                  },
                ),
              ),
              //TODO: Register
              ShakeTransition(
                duration: Duration(milliseconds: 2900),
                axis: Axis.vertical,
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => RegisterScreen(),
                      transition: Transition.downToUp,
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an account ",
                          style: theme.textTheme.titleMedium!.copyWith(
                            color: theme.primaryColor,
                          ),
                        ),
                        TextSpan(
                          text: "SignUp",
                          style: theme.textTheme.headlineSmall!.copyWith(
                            color: theme.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //TODO: Login face google
              Column(
                children: [
                  ShakeTransition(
                    duration: Duration(milliseconds: 3200),
                    axis: Axis.vertical,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.0, bottom: 15.0),
                      child: Text(
                        "Log In with",
                        style: theme.textTheme.headlineMedium!.copyWith(
                          color: theme.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  ShakeTransition(
                    duration: Duration(milliseconds: 3600),
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
            ],
          ),
        ),
      ),
    );
  }
}
