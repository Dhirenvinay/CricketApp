import 'package:criclive/data.dart';
import 'package:criclive/detailedbuild.dart';
import 'package:flutter/material.dart';

class MatchDetailScreen extends StatelessWidget {
  final CricketMatch match;

  MatchDetailScreen({required this.match});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffa3b18a),
        // appBar: AppBar(
        //   title: Text(match.matchType),
        // ),
        body: DetailedBuild(match: match)
        //ReusableBuild(match: match)
        );  
  }
}
