import 'package:football_scores/widgets/trensations_widgets.dart';
import 'package:football_scores/widgets/widgets_stats.dart';
import 'package:flutter/material.dart';

class MatchStatsPage extends StatefulWidget {
  @override
  _MatchStatsPageState createState() => _MatchStatsPageState();
}

class _MatchStatsPageState extends State<MatchStatsPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      children: [
        ShakeTransition(
          duration: Duration(milliseconds: 900),
          axis: Axis.vertical,
          child: CardRatedPlayer(),
        ),
        SizedBox(height: 15),
        ShakeTransition(
          duration: Duration(milliseconds: 1200),
          axis: Axis.vertical,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: theme.colorScheme.secondary.withOpacity(0.03),
            ),
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Column(
                children: [
                  //TODO: FULL TIME
                  Text(
                    "Full Time",
                    style: theme.textTheme.headlineMedium!.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        StatCardsHome(
                          childStat: CardsRedYellow(color: Colors.yellow),
                          time: 75,
                          playerName: 'Solaiman AlDokhail',
                        ),
                        StatCardsAway(
                          childStat: CardsRedYellow(color: Colors.red),
                          time: 65,
                          playerName: 'Benzema',
                        ),
                        StatInOutPlayerHome(
                          playerIn: 'Solaiman AlDokhail',
                          playerOut: 'Reda',
                          time: 46,
                        ),
                        StatInOutPlayerAway(
                          playerIn: 'Osamah',
                          playerOut: 'Firas',
                          time: 46,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  //TODO: Goal's
                  Text(
                    "Goal's",
                    style: theme.textTheme.displayLarge!.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        StatGoalsHome(
                          time: 37,
                          playerGoals: 'Benzema',
                          playerAssist: 'Messi',
                        ),
                        StatGoalsAway(
                          time: 37,
                          playerGoals: 'Benzema',
                          playerAssist: 'Messi',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        ShakeTransition(
          duration: Duration(milliseconds: 1600),
          axis: Axis.vertical,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: theme.colorScheme.secondary.withOpacity(0.03),
            ),
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            child: Column(
              children: [
                //TODO: Possession
                Text(
                  "Possession",
                  style: theme.textTheme.displayMedium,
                ),
                CardLinearBig(
                  value: 0.7,
                  home: 63,
                  away: 37,
                ),
                //TODO: Total Shots
                CardLinearSmall(
                  label: "Total Shots",
                  value: 0.7,
                  home: 4,
                  away: 6,
                ),
                //TODO: Shots on Target
                CardLinearSmall(
                  label: "Shots on Target",
                  value: 0.1,
                  home: 1,
                  away: 3,
                ),
                //TODO: Yellow Cards
                CardLinearSmall(
                  label: "Yellow Cards",
                  value: 0.8,
                  home: 3,
                  away: 1,
                ),
                //TODO: Red Cards
                CardLinearSmall(
                  label: "Red Cards",
                  value: 0.5,
                  home: 0,
                  away: 0,
                ),
                //TODO: Tackels
                CardLinearSmall(
                  label: "Tackles",
                  value: 0.7,
                  home: 6,
                  away: 4,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 50.0),
      ],
    );
  }
}
