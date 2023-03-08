import 'package:flutter/material.dart';

import 'package:mutyne/constants/styles.dart';

class GlobalSafeArea extends StatelessWidget {
  final Widget child;
  const GlobalSafeArea({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size20,
        ),
        child: child,
      ),
    );
  }
}
