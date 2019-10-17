import 'package:flutter/material.dart';

class Animal{
  final String name;
  final String descripton;
  final String detail;
  final Color color;
  final String img;

  Animal(this.name, this.descripton, this.detail, this.color, this.img);
}

List<Animal>  getAnimals(){
  List<Animal> animals = [
    Animal("Lion","The lion is a species in the family Felidael", "Lion is the king of the jungle", Colors.orange[300], "assets/images/lion.png"),
    Animal("Hippo","The common hippopotamus, or hipo is large mostly", "Lion is the king of the jungle", Colors.indigo[300],"assets/images/hippo.png"),
    Animal("Rabbit","Rabbits are small mammals in the family of the", "Lion is the king of the jungle", Colors.green[300], "assets/images/rabbit.png"),
    Animal("Giraffe","The giraffe has a really long neck", "This allows it to reach higher leaves", Colors.brown[400], "assets/images/giraffe.png"),
     Animal("Zebra","A zebra ears grass and is stripped", "Lion is the king of the jungle", Colors.blueGrey[300], "assets/images/zebra.png"),
    Animal("Elephant","The elephant is the largest animal in the jungle", "Lion is the king of the jungle", Colors.brown[400], "assets/images/elephant.png"),
    Animal("Dinosaur","Dinosaurs where alive a long time ago.", "Lion is the king of the jungle", Colors.green[300], "assets/images/dinosaur.png"),
    Animal("Dog","The Dog is mans best friend and is a home pet", "Man and dog have been friends since long ago", Colors.deepOrange[300], "assets/images/pet.png"),

    ];
  
  return animals;
}