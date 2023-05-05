import 'package:career_crush/src/presentation/widgets/buttons/full_button.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';

class SignInNotifier extends ChangeNotifier {
  bool status = false;

  Future<void> sendRequestLink({required Function onSuccess}) async {
    status = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 3));
    status = false;
    notifyListeners();
    onSuccess();
    await Future.delayed(const Duration(seconds: 1));
    SmartDialog.showNotify(
      msg: 'Login success!',
      notifyType: NotifyType.success,
      displayTime: const Duration(seconds: 3),
    );
  }
}

final signInProvider =
    ChangeNotifierProvider<SignInNotifier>((ref) => SignInNotifier());

class SignInButton extends ConsumerWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signIn = ref.read(signInProvider.notifier);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(0, 60, 0, 20),
      child: FullButton(
        onPressed: () {
          signIn.sendRequestLink(onSuccess: () => context.go(Routes.home));
        },
        isLoading: ref.watch(signInProvider).status,
        label: 'Sign In',
      ),
    );
  }
}
