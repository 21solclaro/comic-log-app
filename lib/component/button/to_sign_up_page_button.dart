// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../pages/sign_up_page.dart';

class ToSignUpPageButton extends BackButton {
  const ToSignUpPageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const SignUpPage())),
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.black,
          shape: const StadiumBorder(),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
          side: const BorderSide(color: Colors.black, width: 1.0),
        ),
        child: const Text('新規登録する'),
      ),
    );
  }
}
