// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import '../component/button/custom_elevated_button.dart';
import '../component/button/custom_outlined_button.dart';
import 'sign_in_page.dart';
import 'sign_up_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

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
              children: <Widget>[
                //サインインページへのボタン
                CustomElevatedButton(
                  label: 'Sign In',
                  color: Colors.black,
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SignInPage(),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                //サインアップページへのボタン
                CustomOutlinedButton(
                  label: 'Sign Up',
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
