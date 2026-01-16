import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/level_stars.dart';
import 'package:quiz_app/widgets/levels_container.dart';

class LevelItem extends StatelessWidget {
  final int level;
  final List<Color> levelColors;
  final int stars;
  final bool locked;

  const LevelItem({
    super.key,
    required this.level,
    required this.levelColors,
    required this.stars,
    this.locked=false,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: 90,
        height: 130,
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [

            if (!locked)
              Positioned(
                top: -38,
                child: LevelStars(
                  stars: stars,
                ),
              ),
      
            ClipPath(
              clipper: LevelsContainer(),
              child: Container(
                color: Colors.white,
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(4),
              child: ClipPath(
                clipper: LevelsContainer(),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: levelColors,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [

                      Text(
                        'LEVEL\n$level',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      if (locked)
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.black54,
                          child: const Icon(
                            Icons.lock,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                    ],
                  ),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
