import 'package:career_crush/src/presentation/widgets/buttons/full_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SendResetLinkNotifier extends ChangeNotifier {
  bool status = false;

  Future<void> sendRequestLink() async {
    status = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 3));
    status = false;
    notifyListeners();
    Fluttertoast.showToast(
      msg: "Password reset link sent!",
    );
  }
}

final sendLinkProvider = ChangeNotifierProvider<SendResetLinkNotifier>((ref) {
  return SendResetLinkNotifier();
});

class ForgotPasswordSendButton extends ConsumerWidget {
  const ForgotPasswordSendButton({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final sendRequest = ref.read(sendLinkProvider.notifier);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
      child: FullButton(
        label: 'Send',
        isLoading: ref.watch(sendLinkProvider).status,
        onPressed: sendRequest.sendRequestLink,
      ),
    );
  }
}
