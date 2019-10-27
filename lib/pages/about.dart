import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:animal_for_kids/styles/textStyles.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(appBar:AppBar(
          elevation: 0.01,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Padding(
            padding: EdgeInsets.only(left: 30),
            child: BackButton(color: Colors.orange,),
            
          ),
          title: Text("Learn", style: headerStyle),
         
        ), 
        body: Center(
          child: Container(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: '''Developed by Kevin Nzioka \n''', style: textStyle,),
                  TextSpan(text: '''Reach me via''', style: textStyle,),
                  TextSpan(
                    text: ' twitter',
                    style: textStyle,
                    recognizer: TapGestureRecognizer()..onTap =(){
                      launch('https://twitter.com/cave_the_nerd');
                    }
                  ),
                ]
                ),),
          ),),
        ),

    );

  }
}