import 'package:flutter/material.dart';

class RoundedBtn extends StatelessWidget {
  const RoundedBtn({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color.fromARGB(255, 77, 74, 74),
      foregroundColor: Colors.white,
      onPressed: onPressed,
      child: Icon(
        icon,
        size: 30,
      ),
    );
  }
}
