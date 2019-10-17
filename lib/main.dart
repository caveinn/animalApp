import 'package:animal_for_kids/styles/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:animal_for_kids/Data/animals.dart';
import 'package:animal_for_kids/animals_widgets/card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Leaqrn Animals',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnimalsListPage());
  }
}

class AnimalsListPage extends StatelessWidget {
  final List<Animal> animals = getAnimals();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.01,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Padding(
            padding: EdgeInsets.only(left: 30),
            child: InkWell(
              onTap: (){},
              customBorder: CircleBorder(),
              child: Image(
                image: AssetImage("assets/images/twolines.png"),
              ),
            ),
          ),
          title: Text("Learn", style: headerStyle),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: InkWell(
                onTap: (){},
                customBorder: CircleBorder(),
                  child: Image(
                image: AssetImage("assets/images/dog.png"),
                height: 40,
                width: 40,
              )),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: ListView.builder(
            itemCount: animals.length,
            itemBuilder: (BuildContext context, int index) {
              return AnimalRow(animals[index]);
            },
          ),
        ));
  }
}
