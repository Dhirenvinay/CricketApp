import 'package:criclive/data.dart';
import 'package:criclive/main.dart';
import 'package:flutter/material.dart';
class ReusableBuild extends StatelessWidget {
  const ReusableBuild({super.key,required this.match});
  final CricketMatch match;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width/3,
              child: Image.network(match.team1Image ) ) ,//?? Text("Empty"),
            Text("VS",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width/3,
                child: Image.network(match.team2Image)),

          ],),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Text(
                '${match.team1}',
                textAlign: TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'VS',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
              // textAlign: TextAlign.end,
            ),
            Expanded(child: Text(
              '${match.team2}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),)


          ],),
        Text(match.dateTimeGMT,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        Text(match.status,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),

        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ Text(match.t1s,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

            Text(match.t2s,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ],),
      ],);
  }
}
