import 'package:flutter/material.dart';
import 'package:quiz_app/screens/level_item.dart';

class LevelsScreen extends StatelessWidget {
  const LevelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<List<Color>> levelColor = [
      [Color(0xFFFF80AB), Color(0xFFE040FB)],
      [Color(0xFF81D4FA), Color(0xFF0288D1)],
      [Color(0xFFB9F6CA), Color(0xFF3A067E)],
      [Color(0xFFFFE082), Color(0xFFFFA000)],
      [Color(0xFFFFAB91), Color(0xFFD84315)],
      [Color(0x8C4B198A), Color(0xB84B0697)],
      [Color(0xFF5A1414), Color(0xFF9E8383)],
      [Color(0xFF0E8FC8), Color(0xFF76D8FF)],
      [Color(0xFFEF6A97), Color(0xFFD523AF)],
    ];
    return Scaffold(
      backgroundColor: const Color(0xff1f1147),
      body: Center(
        child: GridView.count(
          padding: const EdgeInsets.all(20),
          // shrinkWrap: true,
          crossAxisCount: 2,
          // mainAxisSpacing: 20,
          // crossAxisSpacing: 20,
          children: List.generate(30, (index) {
            return LevelItem(
              level: index + 1,
              levelColors: levelColor[index % levelColor.length],
              stars: 3 - (index % 4),
              locked: index > 3,

            );
          }),
        ),
      ),
    );
  }
}
