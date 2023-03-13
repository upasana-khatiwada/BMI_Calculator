import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // const ReusableCard({
  //   super.key,
  // });

  const ReusableCard(
      {Key? key, this.cardChild, required this.colour, this.onPress})
      : super(key: key);
  final Color colour;
  final Widget? cardChild;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
