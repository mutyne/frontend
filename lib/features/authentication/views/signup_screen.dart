import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:mutyne/constants/styles.dart';
import 'package:mutyne/common/widgets/global_safe_area.dart';

class SignupScreen extends StatefulWidget {
  static String routeName = "signup";
  static String routeURL = "/signup";

  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

void _onNavigateBack(BuildContext context) {
  context.pop();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => _onNavigateBack(context),
            child: Image.asset('assets/images/arrow_back.png'),
          ),
        ),
        body: GlobalSafeArea(
          child: Column(children: [
            Gaps.v40,
            Container(
              color: BaseColors.green[1],
              width: double.infinity,
              height: 500,
              child: const Center(child: Text('회원가입 UI 작업')),
            )
          ]),
        ));
  }
}
