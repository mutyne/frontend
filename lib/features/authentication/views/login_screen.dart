import 'package:flutter/material.dart';
import 'package:mutyne/constants/gaps.dart';
import 'package:mutyne/constants/sizes.dart';
import 'package:mutyne/constants/colors.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "login";
  static String routeURL = "/login";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

void _onNavigateBack(BuildContext context) {
  debugPrint('arrow back');
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => _onNavigateBack(context),
          child: Image.asset('assets/arrow_back.png'),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size20,
          ),
          child: Column(children: [
            Gaps.v40,
            // 여기 Container안에서 Login ui 작업하신거 연결하면 되요!
            Container(
              color: BaseColors.green[1],
              width: double.infinity,
              height: 500,
              child: const Center(child: Text('로그인 UI 작업')),
            )
          ]),
        ),
      ),
    );
  }
}
