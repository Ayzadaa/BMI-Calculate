import 'package:bmi_2/styles.dart/text_styles.dart';
import 'package:flutter/material.dart';

class IconInCard extends StatelessWidget {
  const IconInCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.isFemale,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final bool isFemale;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: isFemale ? Colors.white : Colors.grey,
        ),
        const SizedBox(height: 10.0),
        Text(
          title,
          style: AppStyles.textGrey,
        )
      ],
    );
  }
}
