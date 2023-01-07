import 'package:flutter/material.dart';

class SliderInCard extends StatelessWidget {
  const SliderInCard({
    Key? key,
    required this.onChanged,
    required this.value,
  }) : super(key: key);

  final void Function(double)? onChanged;
  final double value;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackHeight: 2,
        activeTrackColor: Colors.white,
        thumbColor: const Color(0xffeb1555),
        overlayColor: const Color(0x15eb1555),
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 30),
      ),
      child: Slider(
        max: 200,
        min: 120,
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
