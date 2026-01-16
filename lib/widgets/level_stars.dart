import 'package:flutter/material.dart';

class LevelStars extends StatelessWidget {
  final int stars;

  const LevelStars({
    super.key,
    required this.stars,
  });

  Widget _star(bool active) {
    return Icon(
      Icons.star,
      size: 18,
      color: active ? Colors.amber : Colors.white30,
    );
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 45,
      child: Stack(
        children: [
          Positioned(
            left: 6,
            top: 18,
            child: Transform.rotate(
              angle: -0.35,
              child: _star(stars >= 1),
            ),
          ),
          Positioned(
            left: 30,
            top: 4,
            child: _star(stars >= 2),
          ),
          Positioned(
            right: 6,
            top: 18,
            child: Transform.rotate(
              angle: 0.35,
              child: _star(stars >= 3),
            ),
          ),
        ],
      ),
    );
  }
}
