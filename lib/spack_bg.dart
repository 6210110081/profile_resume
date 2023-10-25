import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SpaceBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: RiveAnimation.asset(
        'assets/space_background.riv',
        fit: BoxFit.cover,
        alignment: Alignment.center,
      ),
    );
  }
}
