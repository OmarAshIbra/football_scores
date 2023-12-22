import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// TODO: Change App name
const String kAppName = 'Football Scores';

///DATE Format

int kFormatDateNumber(dateTime) => int.parse(DateFormat("dd").format(dateTime));
String kFormatDateName(dateTime) => DateFormat("EE").format(dateTime);

String kFormatDateDay(dateTime) => DateFormat("dd - yyyy").format(dateTime);

bool kIsScreenRTL(context) => Directionality.of(context)
    .toString()
    .contains(TextDirection.RTL.value.toLowerCase());

///Images

const kUser01 =
    "https://icdn.psgtalk.com/wp-content/uploads/2022/09/Kylian-Mbappe-goal-celebration-PSG-vs-Juventus-Champions-League-2022-1-630x420.jpg";

///Strings

const kBody01 =
    "Lautaro Martinez: Man City eye Inter Milan striker as Sergio Aguero\'s potential successor";

///change theme
/*

final themeProv = Provider.of<ThemeProvider>(context);
onTap()=>
//change theme
 themeProv.changeTheme();

 */

///change Language
/*

  void _changeLanguage(String language) {
    Locale _temp;
    print(language);

    switch (language) {
      case 'EN':
        _temp = Locale('en', 'US');
        break;
      case 'AR':
        _temp = Locale('ar', 'AR');
        break;

      default:
        _temp = Locale('en', 'US');
    }

    MyApp.setLocale(context, _temp);
  }


  onTap()=>

      //change langue
              setState(() {
                _changeLanguage('AR');
              });

 */
