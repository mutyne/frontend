import 'package:flutter/material.dart';
import 'package:mutyne/constants/sizes.dart';

class TopArea extends StatelessWidget {
  const TopArea({super.key});

  void _onNavigateBack(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.size58,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size6,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => _onNavigateBack(context),
              child: Image.asset('assets/arrow_back.png'),
            ),
          ],
        ),
      ),
    );
  }
}
