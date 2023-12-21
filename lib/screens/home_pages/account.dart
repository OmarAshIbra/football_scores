import 'dart:io';

import 'package:football_scores/helpers/functions.dart';
import 'package:football_scores/providers/theme_provider.dart';
import 'package:football_scores/widgets/trensations_widgets.dart';
import 'package:football_scores/widgets/widgets_settings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  File? _imageFile;

  @override
  Widget build(BuildContext context) {
    final themeProv = Provider.of<ThemeProvider>(context);
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        children: [
          SizedBox(height: 15),
          CardUserProfile(
            image: _imageFile,
            onTap: () async {
              final _image = await FunctionsHelper.pickImage();

              if (_image != null) {
                setState(() {
                  _imageFile = _image;
                });
              }
            },
          ),
          SizedBox(height: 15),
          Divider(),
          //TODO: Dark Mode
          ShakeTransition(
            duration: Duration(milliseconds: 1600),
            child: CardSelectModeApp(
              isDarkMode: !themeProv.isLightTheme,
              onChanged: (val) {
                setState(() {
                  themeProv.changeTheme();
                });
              },
            ),
          ),
          Divider(),
          ShakeTransition(
            duration: Duration(milliseconds: 1800),
            child: CardTileSettings(
              label: "Privacy Policy",
              onTap: () {},
            ),
          ),
          ShakeTransition(
            duration: Duration(milliseconds: 2000),
            child: CardTileSettings(
              label: "Rate App",
              onTap: () async {
                await launchUrl(Uri.dataFromString(
                    'https://play.google.com/store/apps/details?id=com.md.kooramd'));
              },
            ),
          ),
          ShakeTransition(
            duration: Duration(milliseconds: 2400),
            child: CardTileSettings(
              label: "Share App",
              onTap: () async {
                await launchUrl(Uri.dataFromString(
                    'https://play.google.com/store/apps/details?id=com.md.kooramd'));
              },
            ),
          ),
          Divider(),
          ShakeTransition(
            duration: Duration(milliseconds: 2600),
            child: CardTileSettings(
              label: "Twitter",
              icon: FontAwesomeIcons.twitter,
              onTap: () async {
                await launchUrl(Uri.dataFromString(
                    'https://www.linkedin.com/in/mouad-azul-8061a7176/?originalSubdomain=ma'));
              },
            ),
          ),
          ShakeTransition(
            duration: Duration(milliseconds: 3000),
            child: CardTileSettings(
              label: "Instagram",
              icon: FontAwesomeIcons.instagram,
              onTap: () async {
                await launchUrl(
                    Uri.dataFromString('https://www.instagram.com/hxc_10/'));
              },
            ),
          ),
          Divider(),
          ShakeTransition(
            duration: Duration(milliseconds: 3200),
            child: CardTileSettings(
              label: "LogOut",
              icon: FontAwesomeIcons.rightFromBracket,
              onTap: () {
                Get.toNamed('/');
              },
            ),
          ),
        ],
      ),
    );
  }
}
