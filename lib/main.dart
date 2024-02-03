import 'dart:convert';
import 'package:criclive/data.dart';
import 'package:criclive/detailscreen.dart';
import 'package:criclive/reusablebuild.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cricket Match App',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: MatchListScreen(),
    );
  }
}

class MatchListScreen extends StatefulWidget {
  @override
  _MatchListScreenState createState() => _MatchListScreenState();
}

class _MatchListScreenState extends State<MatchListScreen> {
  List<CricketMatch> matches = [];

  @override
  void initState() {
    super.initState();
    fetchMatches();
  }

  Future<void> fetchMatches() async {
    //final apiKey = '49690734-40b7-4d6f-9e03-43fcf3316179';
    const url =
        'https://api.cricapi.com/v1/cricScore?apikey=49690734-40b7-4d6f-9e03-43fcf3316179'; // Replace with the actual API endpoint
    print("the urls is $url");
    final response = await http.get(Uri.parse(url));
    print(' the status code is =${response.statusCode}');

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> matchData = data['data'];

      setState(() {
        matches = matchData.map((json) => CricketMatch.fromJson(json)).toList();
      });
    } else {
      throw Exception('Failed to fetch matches');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffa3b18a),
      // appBar: AppBar(
      //   title: Text('Cricket Matches'),
      //   centerTitle: true,
      // ),
      body: ListView.builder(
        itemCount: matches.length,
        itemBuilder: (context, index) {
          final match = matches[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MatchDetailScreen(match: match),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2.5,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffdad7cd),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ReusableBuild(match: match),
            ),
          );
        },
      ),
    );
  }
}
