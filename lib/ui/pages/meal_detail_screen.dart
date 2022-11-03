import 'package:flutter/material.dart';

import '../../model/meal.dart';

class MealDetailScreen extends StatelessWidget {
  final Meal meal;
  const MealDetailScreen({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      body: CustomScrollView(
        slivers: [
           SliverAppBar(
            backgroundColor: const Color(0xFF200087),
            expandedHeight: 300,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                meal.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
         // SliverList(delegate: delegate),
        ],
      ),
    );
  }
}
