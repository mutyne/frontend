import 'package:flutter/material.dart';
import 'package:mutyne/constants/sizes.dart';
import 'package:mutyne/constants/colors.dart';

class TopArea extends StatelessWidget {
  const TopArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.size58,
      color: BaseColors.black[2],
      child: Row(
        children: const [],
      ),
    );
  }
}
