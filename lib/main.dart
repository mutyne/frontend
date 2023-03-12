import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:mutyne/constants/styles.dart';
import 'package:mutyne/router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      title: 'Mutyne App',
      // localizationsDelegates: const [
      //   S.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      // ],
      theme: ThemeData(
        fontFamily: 'Pretendard',
        appBarTheme: AppBarTheme(
          toolbarHeight: Sizes.size56 + Sizes.size2,
          backgroundColor: BaseColors.black[0],
          elevation: 1,
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: Sizes.size16,
            fontWeight: FontWeight.w500,
          ),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: BaseColors.black[10],
          ),
        ),
      ),
    );
  }
}
