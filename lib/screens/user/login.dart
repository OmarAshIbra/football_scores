import 'package:football_scores/screens/user/register.dart';
import 'package:football_scores/screens/user/rest_pass.dart';
import 'package:football_scores/widgets/trensations_widgets.dart';
import 'package:football_scores/widgets/widgets_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
                    duration: Duration(milliseconds: 1000),
                    child: Text(
                      "Let’s sign you In",
                      style: theme.textTheme.displayLarge,
                    ),
                  ),
                  SizedBox(height: 5),
                  ShakeTransition(
                    duration: Duration(milliseconds: 1400),
                    child: Text(
                      "Welcome back! You have been missed",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 10),
                  ShakeTransition(
                    duration: Duration(milliseconds: 1600),
                    child: Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        'assets/images/intro_3.svg',
                        height: mSize.height / 3,
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(
                child: ShakeTransition(
                  duration: Duration(milliseconds: 1800),
                  axis: Axis.vertical,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
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
                duration: Duration(milliseconds: 2000),
                axis: Axis.vertical,
                child: CardTileCondition(
                  onTap: () {
                    //TODO: open privacy policy
                  },
                ),
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 2400),
                axis: Axis.vertical,
                child: CardRegisterUser(
                  label: "Sign In",
                  onTap: () {
                    //TODO Login
                    Get.offAndToNamed('/home');
                  },
                ),
              ),
              //TODO: LogIn
              ShakeTransition(
                duration: Duration(milliseconds: 2800),
                axis: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
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
                            text: "Signup",
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
                duration: Duration(milliseconds: 3000),
                axis: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 0.0),
                  child: InkWell(
                    onTap: () {
                      //TODO: Forgot pass
                      Get.to(
                        () => RestPasswordScreen(),
                      );
                    },
                    child: Text(
                      "Forgot Password",
                      style: theme.textTheme.headlineMedium!.copyWith(
                        color: theme.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 3400),
                axis: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: Text(
                    "Log In with",
                    style: theme.textTheme.headlineMedium!.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                ),
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 3500),
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
