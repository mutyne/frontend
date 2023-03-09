import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:mutyne/constants/styles.dart';
import 'package:mutyne/common/widgets/global_safe_area.dart';

class PasswordScreen extends StatefulWidget {
  static String routeName = "password";
  static String routeURL = "/password";

  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

void _onNavigateBack(BuildContext context) {
  context.goNamed('login'); // 수정 필요
}

class _PasswordScreenState extends State<PasswordScreen> {
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
                      children: const <Widget>[
                        Text(
                          '비밀번호 재설정 안내\n메일을 보내드립니다.',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(24, 24, 24, 1),
                          ),
                        ),
                        Text(
                          '가입하신 정확한 이메일 주소를 입력해 주세요.',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(24, 24, 24, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: '이메일',
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(212, 212, 212,
                                  1), // TODO: 이거 color code 로 바로 넣는 법 없음? #D4D4D4 이런 거
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(212, 212, 212, 1),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextButton(
                        onPressed: () {
                          print('button login is clicked');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(229, 229, 229, 1),
                          fixedSize:
                              Size(MediaQuery.of(context).size.width, 55),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          '이메일 발송',
                          style: TextStyle(
                            fontSize: 16.0,
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
