// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../component/button/to_sign_in_page_button.dart';
import '../component/button/to_sign_up_page_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const <Widget>[
            ToSignInPageButton(),
            SizedBox(height: 10),
            ToSignUpPageButton(),
          ],
        ),
      ),
    );
  }
}
