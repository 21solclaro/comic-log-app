// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../component/button/custom_outlined_button.dart';
import '../component/button/cutom_elevated_button.dart';
import 'sign_in_page.dart';
import 'sign_up_page.dart';

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
