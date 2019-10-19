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
    Animal("Hippo",
    "The common hippopotamus, or hipo is large mostly", 
    '''
    They have big teeth to defent their spot on the river
    They stay in the water to keep cold.

    ''',
     Colors.indigo[300],"assets/images/hippo.png"),
    Animal("Rabbit","Rabbits are small mammals in the family of the", "Lion is the king of the jungle", Colors.green[300], "assets/images/rabbit.png"),
    Animal("Giraffe","The Giraffe is the tallest animal in the world.", 
    '''
    Giraffe live on the plains of Africa
    They grow as tall as a two story house
    They can eat leaves from tree tops thanks to their long necks
      ''', 
    Colors.brown[400], 
    "assets/images/giraffe.png"),
     Animal("Zebra",
     "A zebra eats grass and has black and white stripes", 
     '''
     Zebras look a lot like horses
     The stripes makes it hard for lions and other predators to see them 
     and therefore they do not bother them.
     ''',
      Colors.blueGrey[300], "assets/images/zebra.png"),
    Animal(
      "Elephant",
      "Elephants are the largest land-living mammal in the world.",
    '''
    There are two types of elephant, the Asian elephant and the African elephant (although sometimes the African Elephant is split into two species, the African Forest Elephant and the African Bush Elephant).

    Both female and male African elephants have tusks but only the male Asian elephants have tusks. They use their tusks for digging and finding food.
    
    Elephants can swim – they use their trunk to breathe like a snorkel in deep water.r
    
    ''', 

     Colors.brown[400], "assets/images/elephant.png"),
    Animal("Dinosaur","Dinosaurs where alive a long time ago.", "Lion is the king of the jungle", Colors.green[300], "assets/images/dinosaur.png"),
    Animal("Dog","The Dog is mans best friend and is a home pet", "Man and dog have been friends since long ago", Colors.deepOrange[300], "assets/images/pet.png"),

    ];
  
  return animals;
}