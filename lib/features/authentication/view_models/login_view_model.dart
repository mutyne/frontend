import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginViewModel extends StateNotifier<void> {
  LoginViewModel() : super([]);
}

final loginProvider = StateNotifierProvider<LoginViewModel, void>((ref) {
  return LoginViewModel();
});
