// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../pages/sign_in_page.dart';

class ToSignInPageButton extends StatelessWidget {
  const ToSignInPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const SignInPage())),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: const StadiumBorder(),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
        child: const Text('ログインする'),
      ),
    );
  }
}
