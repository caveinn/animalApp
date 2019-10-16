import 'package:flutter/material.dart';

class Animal{
  final String name;
  final String descripton;
  final String detail;
  final Color color;

  Animal(this.name, this.descripton, this.detail, this.color);
}

List<Animal>  getAnimals(){
  List<Animal> animals = [
    Animal("Lion","The lion is a species in the family Felidael", "Lion is the king of the jungle", Colors.orange[500]),
    Animal("Hippo","The common hippopotamus, or hipo is large mostly", "Lion is the king of the jungle", Colors.brown),
    Animal("Rabbit","Rabbits are small mammals in the family of the", "Lion is the king of the jungle", Colors.green),
    Animal("Lion","A lion roars", "Lion is the king of the jungle", Colors.deepOrange),
     Animal("Lion","A lion roars", "Lion is the king of the jungle", Colors.orange[500]),
    Animal("Lion","A lion roars", "Lion is the king of the jungle", Colors.brown),
    Animal("Lion","A lion roars", "Lion is the king of the jungle", Colors.green),
    Animal("Lion","A lion roars", "Lion is the king of the jungle", Colors.deepOrange),

    ];
  
  return animals;
}