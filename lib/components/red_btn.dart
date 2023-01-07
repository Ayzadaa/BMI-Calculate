import 'package:flutter/material.dart';

class RedButton extends StatelessWidget {
  const RedButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 211, 56, 45),
        minimumSize: const Size(double.infinity, 70),
      ),
      onPressed: onPressed,
      child: Text(
        'Calculate'.toUpperCase(),
        style: const TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
