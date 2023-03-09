import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:mutyne/constants/styles.dart';
import 'package:mutyne/common/widgets/global_safe_area.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "login";
  static String routeURL = "/login";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

void _onNavigateBack(BuildContext context) {
  context.goNamed('signup'); // 수정 필요
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
      body: GlobalSafeArea(
        child: Column(
          children: [
            Gaps.v40,
            Center(
              child: Container(
                padding: const EdgeInsets.only(
                    top: 90.0, left: 20.0, right: 20.0, bottom: 90),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: <Widget>[
                          const Text(
                            '로그인',
                            style: TextStyle(
                              fontSize: Sizes.size24 + Sizes.size2,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Gaps.v32,
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: '이메일',
                              hintStyle: const TextStyle(
                                fontSize: Sizes.size14 - 1,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: BaseColors.black[3]!,
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
                          Gaps.v8,
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: '비밀번호',
                              hintStyle: const TextStyle(
                                fontSize: Sizes.size12 + Sizes.size1,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: BaseColors.black[3]!,
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
                          Gaps.v24,
                          TextButton(
                            onPressed: () {
                              print('button login is clicked');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: BaseColors.black[10],
                              fixedSize: const Size(370, 54),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(Sizes.size5),
                              ),
                            ),
                            child: const Text(
                              '로그인',
                              style: TextStyle(
                                fontSize: Sizes.size16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Gaps.v24,
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
                                  context.pushNamed('password');
                                  // context.goNamed('password');
                                  // TODO: subroutes 는 context.push('password'); 하면 url 을 못 찾는데 혹시 이유 아시나요
                                },
                                child: Text(
                                  '비밀번호 찾기',
                                  style: TextStyle(
                                    fontSize: Sizes.size14,
                                    fontWeight: FontWeight.w400,
                                    color: BaseColors.black[8],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  print('button join is clicked');
                                },
                                child: Text(
                                  '가입하기',
                                  style: TextStyle(
                                    fontSize: Sizes.size14,
                                    fontWeight: FontWeight.w400,
                                    color: BaseColors.black[8],
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
                            child: Text(
                              '간편 로그인',
                              style: TextStyle(
                                fontSize: Sizes.size14,
                                fontWeight: FontWeight.w400,
                                color: BaseColors.black[8],
                              ),
                            ),
                          ),
                          Gaps.v16,
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
                                    fontSize: Sizes.size24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              Gaps.h24,
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
                                    fontSize: Sizes.size24,
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
