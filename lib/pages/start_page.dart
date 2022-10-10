// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import '../component/button/to_sign_in_page_button.dart';
import '../component/button/to_sign_up_page_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 150, 16, 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SvgPicture.asset(
                'assets/image/book_illust.svg',
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Column(
              children: const <Widget>[
                ToSignInPageButton(),
                SizedBox(height: 10),
                ToSignUpPageButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
