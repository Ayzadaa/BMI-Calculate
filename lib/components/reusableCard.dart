import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
    required this.myChild,
  }) : super(key: key);

  final Widget myChild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff1d1e33),
          borderRadius: BorderRadius.circular(10),
        ),
        child: myChild,
      ),
    ));
  }
}
