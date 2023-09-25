import 'package:criclive/data.dart';
import 'package:criclive/main.dart';
import 'package:criclive/reusablebuild.dart';
import 'package:flutter/material.dart';

class MatchDetailScreen extends StatelessWidget {
  final CricketMatch match;

  MatchDetailScreen({required this.match});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Match Details'),
      ),
      body: ReusableBuild(match: match)
    );
  }
}
