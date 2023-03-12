import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignupViewModel extends StateNotifier<void> {
  SignupViewModel() : super([]);
}

final signupProvider = StateNotifierProvider<SignupViewModel, void>((ref) {
  return SignupViewModel();
});
