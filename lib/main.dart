import 'package:animal_for_kids/animals_widgets/drawer.dart';
import 'package:animal_for_kids/styles/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:animal_for_kids/Data/animals.dart';
import 'package:animal_for_kids/animals_widgets/card.dart';
import 'package:admob_flutter/admob_flutter.dart';

void main(){
  Admob.initialize("ca-app-pub-3940256099942544~1458002511");
  runApp(MyApp());
  }


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Learn Animals',
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
    AdmobInterstitial interstitialAd;
    interstitialAd = AdmobInterstitial(
      adUnitId: "ca-app-pub-3940256099942544/1033173712",
      listener: (AdmobAdEvent event, Map<String, dynamic> args) {
    if (event == AdmobAdEvent.closed) interstitialAd.load();
    if (event == AdmobAdEvent.failedToLoad) {
      // Start hoping they didn't just ban your account :)
      print("Error code: ${args['errorCode']}");
    }
  },
    );
    print("x");
     interstitialAd.load();
    return Scaffold(
        appBar: AppBar(
          elevation: 0.01,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Padding(
            padding: EdgeInsets.only(left: 30),
            child: new Builder(builder: (context) {
					return new InkWell(
              onTap: (){
                Scaffold.of(context).openDrawer();
              },
              customBorder: CircleBorder(),
              child: Image(
                image: AssetImage("assets/images/twolines.png"),
              ),
            );
				}),
            
          ),
          title: Text("Learn", style: headerStyle),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: InkWell(
                onTap: () async {
                 print(await interstitialAd.isLoaded);
                  if (interstitialAd.isLoaded != null) {
                    interstitialAd.show();
                  }


                },
                customBorder: CircleBorder(),
                  child: Image(
                image: AssetImage("assets/images/dog.png"),
                height: 40,
                width: 40,
              )),
            ),
          ],
        ),
        drawer: MyDrawer(),
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
