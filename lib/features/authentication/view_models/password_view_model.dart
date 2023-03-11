import 'package:flutter_riverpod/flutter_riverpod.dart';

class PasswordViewModel extends StateNotifier<void> {
  PasswordViewModel() : super([]);
}

final passwordProvider = StateNotifierProvider<PasswordViewModel, void>((ref) {
  return PasswordViewModel();
});
