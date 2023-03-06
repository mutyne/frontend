import 'package:flutter/material.dart';
import 'package:mutyne/features/authentication/views/login_screen.dart';
import 'package:mutyne/constants/colors.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  routerConfig: ref.watch(routerProvider),
      debugShowCheckedModeBanner: false,
      title: 'Mutyne App',
      // localizationsDelegates: const [
      //   S.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      // ],
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: BaseColors.black[10],
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
