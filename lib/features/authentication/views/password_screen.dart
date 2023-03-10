import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:mutyne/constants/styles.dart';
import 'package:mutyne/common/widgets/global_safe_area.dart';

class PasswordScreen extends StatefulWidget {
  static String routeName = "password";
  static String routeURL = ":password";

  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

void _onNavigateBack(BuildContext context) {
  context.pop();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => _onNavigateBack(context),
          child: Image.asset('assets/arrow_back.png'),
        ),
      ),
      body: GlobalSafeArea(
        child: Column(
          children: [
            Gaps.v40,
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(
                  top: 200, left: 20.0, right: 20.0, bottom: 30.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '비밀번호 재설정 안내\n메일을 보내드립니다.',
                          style: TextStyle(
                            fontSize: Sizes.size20 + Sizes.size2,
                            fontWeight: FontWeight.w700,
                            color: BaseColors.black[10],
                          ),
                        ),
                        Text(
                          '가입하신 정확한 이메일 주소를 입력해 주세요.',
                          style: TextStyle(
                            fontSize: Sizes.size14,
                            fontWeight: FontWeight.w400,
                            color: BaseColors.black[10],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(children: const [Gaps.v32, Gaps.v2]),
                  Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: '이메일',
                          hintStyle: const TextStyle(
                            fontSize: Sizes.size14,
                            fontWeight: FontWeight.w400,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: BaseColors.black[3]!, // 못찾네...
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(Sizes.size12),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: BaseColors.black[3]!,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(Sizes.size12),
                            ),
                          ),
                        ),
                      ),
                      Gaps.v16,
                      TextButton(
                        onPressed: () {
                          print('button email is clicked');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: BaseColors.black[10],
                          fixedSize: const Size(double.infinity, Sizes.size52),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          '이메일 발송',
                          style: TextStyle(
                            fontSize: Sizes.size16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
