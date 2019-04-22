import 'package:flutter/material.dart';
import './landing_page.dart';
class ScorePage extends StatelessWidget {

  final int score;
  final int totalQuestions;

  ScorePage(this.score,this.totalQuestions);

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.blueAccent,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "Your score: ",
            style: new TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold)
          ),
          new Text(score.toString()+"/"+totalQuestions.toString(),style: new TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold)),
          new IconButton(
            icon: new Icon(Icons.arrow_right,size: 50,),
            color: Colors.white,
            iconSize: 50,
            onPressed:() => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new LandingPage()), (Route route) => route == null ),
          )
        ],
      ),
    );
  }
}