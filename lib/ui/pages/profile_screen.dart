import 'package:flutter/material.dart';
import 'package:study_01_11_22/model/meal.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(40),
        ),
        child: BottomNavigationBar(
          iconSize: 40,
          selectedIconTheme: const IconThemeData(
            color: Color(0xFF200087),
          ),
          unselectedIconTheme: const IconThemeData(
            color: Colors.black12,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Icon(
                  Icons.home,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Icon(
                  Icons.search,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Icon(
                  Icons.person,
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            height: height * 0.35,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.only(
                    top: 40, left: 32, right: 16, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: const Text(
                        'Date, Year',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: const Text(
                        'Hello, David',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      trailing: ClipOval(
                        child: Image.asset(
                          'assets/user.jpeg',
                        ),
                      ),
                    ),
                    _RadialProgress(
                      width: height * 0.2,
                      height: height * 0.2,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.38,
            left: 0,
            right: 0,
            child: Container(
              height: height * 0.50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 8,
                      left: 32,
                      right: 16,
                    ),
                    child: Text(
                      'MEALS FOR TODAY',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(width: 32),
                          for (int i = 0; i < meals.length; i++)
                            _MealCard(meal: meals[i]),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                          bottom: 10, left: 32, right: 32),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF20008B),
                            Color(0xFF200087),
                          ],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(width: 20),
                          const Padding(
                            padding: EdgeInsets.only(top: 16, left: 16),
                            child: Text(
                              'YOUR NEXT WORKOUT',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 4, left: 16),
                            child: Text(
                              'Upper Body',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                const SizedBox(width: 20),
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                    color: Color(0xFF5B4D9D),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    'assets/chest.png',
                                    width: 50,
                                    height: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                    color: Color(0xFF5B4D9D),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    'assets/back.png',
                                    width: 50,
                                    height: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                    color: Color(0xFF5B4D9D),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    'assets/biceps.png',
                                    width: 50,
                                    height: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _RadialProgress extends StatelessWidget {
  final double height, width;

  const _RadialProgress({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RadialPainter(progress: 0.7),
      child: Container(
        height: height,
        width: width,
      ),
    );
  }
}

class _RadialPainter extends CustomPainter {
  final double progress;

  _RadialPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 10
      ..color = const Color(0xFF200087)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    canvas.drawArc(Rect.fromCircle(center: center, radius: size.width / 2),
        startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _MealCard extends StatelessWidget {
  const _MealCard({Key? key, required this.meal}) : super(key: key);

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
        bottom: 10,
      ),
      child: Material(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Image.asset(
                  meal.imagePath,
                  width: 150,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 5),
                    Text(
                      meal.mealTime,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Text(
                      meal.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '${meal.kiloCaloriesBurnt} kcal',
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time,
                          size: 15,
                          color: Colors.black12,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${meal.timeTaken} min',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
