import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:mutyne/constants/styles.dart';
import 'package:mutyne/common/widgets/global_safe_area.dart';

class LoginScreen extends ConsumerWidget {
  static String routeName = "login";
  static String routeURL = "/login";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: GlobalSafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: const [Gaps.v56, Gaps.v2],
                ),
                Gaps.v40,
              ],
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.only(
                    top: 90.0, left: 20.0, right: 20.0, bottom: 90),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          const Text(
                            '로그인',
                            style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: '이메일',
                              hintStyle: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFD4D4D4),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFD4D4D4),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: '비밀번호',
                              hintStyle: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFD4D4D4),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFD4D4D4),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          TextButton(
                            onPressed: () {
                              print('button login is clicked');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFFE5E5E5),
                              fixedSize: const Size(370, 54),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            child: const Text(
                              '로그인',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  print('button password is clicked');
                                  // Navigator.push(context, MaterialPageRoute(
                                  //     builder: (BuildContext context) {
                                  //   return const PasswordScreen();
                                  // }));
                                  context.push('/password');
                                },
                                child: const Text(
                                  '비밀번호 찾기',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF616161),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => _onSignupRoute(context),
                                child: const Text(
                                  '가입하기',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF616161),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              print('button join is clicked');
                            },
                            child: const Text(
                              '간편 로그인',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF616161),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextButton(
                                onPressed: () {
                                  print('button K is clicked');
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: const Color(0xFFD9D9D9),
                                  fixedSize: const Size(
                                      20, 60), // TODO: 동그라미로 만드는 거 어떻게 함?
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: const Text(
                                  'K',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 25.0,
                              ),
                              TextButton(
                                onPressed: () {
                                  print('button A is clicked');
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: const Color(0xFFD9D9D9),
                                  fixedSize: const Size(
                                      20, 60), // TODO: 동그라미로 만드는 거 어떻게 함?
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: const Text(
                                  'A',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _onSignupRoute(BuildContext context) {
  context.pushNamed('signup');
}
