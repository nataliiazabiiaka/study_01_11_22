import 'package:flutter/material.dart';

class Meal {
  final String mealTime, name, imagePath, kiloCaloriesBurnt, timeTaken;

  Meal({
    required this.mealTime,
    required this.name,
    required this.imagePath,
    required this.kiloCaloriesBurnt,
    required this.timeTaken,
  });
}

final meals = [
  Meal(
      mealTime: 'BREAKFAST',
      name: 'Fruit Granola',
      imagePath: 'assets/fruit_granola.jpeg',
      kiloCaloriesBurnt: '271',
      timeTaken: '10',
  ),
  Meal(
    mealTime: 'DINNER',
    name: 'Pesto Pasta',
    imagePath: 'assets/pesto_pasta.jpeg',
    kiloCaloriesBurnt: '612',
    timeTaken: '15',
  ),
  Meal(
    mealTime: 'SNACK',
    name: 'Keto Snack',
    imagePath: 'assets/keto_snack.jpeg',
    kiloCaloriesBurnt: '414',
    timeTaken: '16',
  ),
];
