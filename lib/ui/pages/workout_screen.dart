import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
          ),
          child: Column(
            children: [
              IconButton(
                  onPressed: onPressed,
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 40,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
