import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'account.dart';
import 'events.dart';
import 'favorites.dart';

class BottomNavScreen extends StatefulWidget {
  final int? indexPage;
  final Widget? screen;
  BottomNavScreen({this.indexPage, this.screen});

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen>
    with TickerProviderStateMixin {
  // late TabController _tabController;

  int _indexPage = 0;
  List<Widget> _listPages = [
    EventsPage(),
    FavoritesPage(),
    AccountPage(),
  ];

  @override
  void initState() {
    widget.indexPage != null ? _indexPage = widget.indexPage! : _indexPage = 1;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              label: "Events",
              icon: Icon(FontAwesomeIcons.house),
            ),
            BottomNavigationBarItem(
              label: "Teams",
              icon: Icon(FontAwesomeIcons.futbol),
            ),
            BottomNavigationBarItem(
              label: "Account",
              icon: Icon(FontAwesomeIcons.gear),
            ),
          ],
          currentIndex: _indexPage,
          onTap: (int newIndex) {
            setState(() {
              _indexPage = newIndex;
            });
          },
        ),
        body: _listPages[_indexPage]);
  }
}
