import 'package:football_scores/helpers/constants.dart';
import 'package:football_scores/screens/home_pages/bottom_nav_screen.dart';
import 'package:football_scores/screens/user/login.dart';
import 'package:football_scores/screens/user/register.dart';
import 'package:football_scores/screens/user/splash.dart';
import 'package:football_scores/screens/user/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'helpers/theme.dart';
import 'providers/theme_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(builder: (context, theme, child) {
        return GetMaterialApp(
          title: kAppName,
          debugShowCheckedModeBanner: false,
          theme: themeData(context),
          darkTheme: darkThemeData(context),
          themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
          transitionDuration: Duration(milliseconds: 300),
          defaultTransition: Transition.rightToLeftWithFade,
          initialRoute: '/',
          routes: {
            '/': (_) => SplashScreen(),
            '/welcome': (_) => WelcomeScreen(),
            '/logIn': (_) => LogInScreen(),
            '/register': (_) => RegisterScreen(),
            '/home': (_) => BottomNavScreen(),
          },
        );
      }),
    );
  }
}
