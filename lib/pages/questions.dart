import 'dart:ffi';

import 'package:animal_for_kids/Data/animals.dart';
import 'package:animal_for_kids/styles/textStyles.dart';
import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  AnimalQuestion question;
  Question(this.question);
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  String _answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.01,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Padding(
            padding: EdgeInsets.only(left: 30),
            child: BackButton(
              color: Colors.black,
            ),
          ),
          title: Text("Question", style: headerStyle),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: InkWell(
                  onTap: () async {},
                  customBorder: CircleBorder(),
                  child: Image(
                    image: AssetImage("assets/images/dog.png"),
                    height: 40,
                    width: 40,
                  )),
            ),
          ],
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Q. ${widget.question.detail}"),
              Container(
                child: Card(
                                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("A"),
                      SizedBox(width: 20,),
                      Image(
                        image: AssetImage(widget.question.choiceA),
                        height: 60,
                        width: 60,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Card(
                                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("B"),
                      SizedBox(width: 20,),
                      Image(
                        image: AssetImage(widget.question.choiceB),
                        height: 60,
                        width: 60,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
