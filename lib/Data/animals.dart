import 'package:animal_for_kids/pages/questions.dart';
import 'package:flutter/material.dart';

class AnimalQuestion {
  final String detail;
  final String choiceA;
  final String choiceB;
  final String answer;
  AnimalQuestion(this.detail, this.choiceA, this.choiceB, this.answer);
}

class Animal {
  final String name;
  final String descripton;
  final String detail;
  final Color color;
  final String img;
  final AnimalQuestion question;

  Animal(this.name, this.descripton, this.detail, this.color, this.img,
      this.question);
}

List<Animal> getAnimals() {
  List<Animal> animals = [
    Animal(
        "Lion",
        "Lion is the king of the jungle",
        '''
Lions are part of the cat family.

Lions eat meat.

Female lions are called lionesses.

They make a loud noice called roaring. 

Male lions have a coat of fuzzy hair around 
their necks called manes. They protect 
them from gettting bitten during fights.

The lionessess have no mane
which allows them to run faster. They therefore 
do all the hunting.

     ''',
        Colors.orange[300],
        "assets/images/lion.png",
        AnimalQuestion("Which is a lion", "assets/images/lion.png",
            "assets/images/dinosaur.png", "A")),
    Animal(
        "Hippo",
        "Hippos are large animals that live ",
        '''
Hippopotamus or hippo for short are
large animals that eat plants.

They spent a lot of time in the water.
They sleep in the water during the day
to keep cool. 

They have big teeth. They use their
teeth to defent their sport in the
river.

They graze at night.

    ''',
        Colors.indigo[300],
        "assets/images/hippo.png",
        AnimalQuestion("Which is a hippo", "assets/images/hippo.png",
            "assets/images/lion.png", "A")),
    Animal(
        "Rabbit",
        "Rabbits are small mammals in the family of the",
        "Lion is the king of the jungle",
        Colors.green[300],
        "assets/images/rabbit.png",
        AnimalQuestion("Which is a rabbit", "assets/images/giraffe.png",
            "assets/images/rabbit.png", "B")),
    Animal(
        "Giraffe",
        "The Giraffe is the tallest animal in the world.",
        '''
    Giraffe live on the plains of Africa
    They grow as tall as a two story house
    They can eat leaves from tree tops thanks to their long necks
      ''',
        Colors.brown[400],
        "assets/images/giraffe.png",
        AnimalQuestion("Which is a hippo", "assets/images/pet.png",
            "assets/images/giraffe.png", "B")),
    Animal(
        "Zebra",
        "A zebra eats grass and has black and white stripes",
        '''
Zebras eat grass.

Zebras look a lot like horses. They have 
black and white stripes. 

Each Zebra has a unique stripe pattern.

They like to live in large groups called 
herds. They stay together for protection.

They love to run. They can run more than
200 kilometres every year in search of
food and water.

The stripes makes it hard for lions and other 
predators to see them and therefore they do 
not bother them.
     ''',
        Colors.blueGrey[300],
        "assets/images/zebra.png",
        AnimalQuestion("Which is a Zebra", "assets/images/Zebra.png",
            "assets/images/giraffe.png", "A")),
    Animal(
        "Elephant",
        "Elephants are the largest land-living mammal in the world.",
        '''
    There are two types of elephant, 
    the Asian elephant and the African elephant.

    They have a long nose called a trunk.

    They use the trunk in many different ways.
    They use it to pick up grass to it. They
    also use it as a straw to suck up water to drink.

    Elephants also have to teeth that protude 
    infront of their mouths called tusks.

    Elaphants also have very large ears.

    ''',
        Colors.brown[400],
        "assets/images/elephant.png",
        AnimalQuestion("Which is an Elephant", "assets/images/elephant.png",
            "assets/images/lion.png", "A")),
    Animal(
        "Dog",
        "The Dog is humans best friend ",
        '''
    Dogs are pets. A pet is an animal we keep at
    home for fun.
    
    Dogs vary in sizes and shapes and colors.
    Some as small as the chiwawa and some large 
    ones such as the bulldog.

    Dogs help us with a lot of tasks such as 
    herding, assisting police and aiding disabled 
    people.

     ''',
        Colors.deepOrange[300],
        "assets/images/pet.png",
        AnimalQuestion("Which is a dog", "assets/images/hippo.png",
            "assets/images/pet.png", "B")),
  ];

  return animals;
}
