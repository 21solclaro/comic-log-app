import 'sign_in_page.dart';
import 'sign_up_page.dart';
import '../widgets/buttons/custom_outlined_button.dart';
import '../widgets/buttons/cutom_elevated_button.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomElevatedButton(
              text: 'ログインする',
              function: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SignInPage()))),
          const SizedBox(height: 10),
          CustomOutlinedButton(
              text: '新規登録する',
              function: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SignUpPage()))),
        ],
      ),
    ));
  }
}
