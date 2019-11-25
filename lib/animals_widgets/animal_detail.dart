import 'package:flutter/material.dart';
import 'package:animal_for_kids/Data/animals.dart';
import 'package:animal_for_kids/styles/textStyles.dart';
import 'package:animal_for_kids/pages/questions.dart';

 class AnimalDetail extends StatelessWidget {
   final Animal animal;
  AnimalDetail(this.animal);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
            body: Padding( 
      
              padding: EdgeInsets.only(top:21),
              child: Stack(children: <Widget>[
              Padding(
                      padding: EdgeInsets.only(top:300),
                      child:ListView(
                        children: <Widget>[
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Padding(
                               padding: EdgeInsets.only(left:20),
                               child:Text(animal.name, style: headerStyle,)),
                               Padding(
                               padding: EdgeInsets.only(left:20, top:10),
                               child:Text(
                                 animal.detail,
                                 textAlign: TextAlign.left, 
                                 style: textStyle,)),
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    width: 100,
                                    child: RaisedButton(
                                      color: animal.color,
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => Question(animal.question, animal)));
                                      },
                                      child: 
                                        Text("Questions")),
                                  ),
                                )
                           ],
                         )
                        ],
                        )
                        ),
              Container(
                padding: EdgeInsets.only(left: 50),
                height: 280,
                width:double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: animal.color,
                ),
                child: Hero(
                  tag: animal.name,
                child: Image(
                  image: AssetImage(animal.img),
                )
              ),
              ),
              BackButton(color: Colors.white),
            ]),),
            backgroundColor: Colors.white,
        
    );
  }
}