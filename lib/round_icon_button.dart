import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  //const RoundIconButton({super.key});

  const RoundIconButton({Key? key, required this.onPressed, required this.icon})
      : super(key: key);

  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      //The elevation of a component is the distance from the underneath surface. Visually, the elevation results in shadows.
      elevation: 0.0,
      //since the size of the button by defult is small than what we require we can mention the size of the box manually
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}