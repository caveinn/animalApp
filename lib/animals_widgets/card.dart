import 'package:flutter/material.dart';
import 'package:animal_for_kids/Data/animals.dart';
import 'package:animal_for_kids/styles/textStyles.dart';
import 'package:animal_for_kids/animals_widgets/animal_detail.dart';

class AnimalContainer extends StatelessWidget{
  final Animal animal;
  AnimalContainer(this.animal);
  @override
  Widget build(BuildContext context){
    return Material( child: InkWell( child:
    Container(
      margin: EdgeInsets.only(left: 46, right: 20),
      padding:EdgeInsets.only(left: 46, top: 10, bottom: 15, right: 15),
    child: ListTile(
      subtitle: Padding(
        padding: EdgeInsets.only(top:10),
        child:Text(animal.descripton, style: subtitleStyle,),),
      title: Text(animal.name, style: titleStyle,),
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalDetail(animal)));
    },
  
    ),
    decoration: BoxDecoration(
        color: animal.color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
      
        ),
    
    )));
  }
}

class AnimalImage extends StatelessWidget{ 
  final Animal animal;
  AnimalImage(this.animal);
  @override
  Widget build(BuildContext context) {
    return Container(
    // margin: EdgeInsets.symmetric(vertical: 16),
    alignment: FractionalOffset.centerLeft,
    child: Hero(
      tag:animal.name,
    child: Image(
        image: AssetImage(animal.img),
         height: 130, width: 90
        ),
  ));
  }
}
class AnimalRow extends StatelessWidget {
  final Animal animal;


  AnimalRow(this.animal);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 15),
      child: Stack(
        children: <Widget>[
          InkWell(child:AnimalContainer(animal)), AnimalImage(animal)],
      ),
    );
  }
}

