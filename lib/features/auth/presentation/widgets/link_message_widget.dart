

import 'package:flutter/material.dart';
import 'package:i_shop/core/const/app_text_styles.dart';

import 'package:i_shop/core/widgets/web_view.dart';


class LinkMessageWidget extends StatelessWidget {
  const LinkMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WebViewPage(
              url: 'https://dummyjson.com/users',
            ),
          ),
        );
      },
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: AppTextStyles.darkGray14Regular,
          children:  [
            TextSpan(
              text: 'You can use any user\'s credentials from ',
          style: AppTextStyles.darkGray14Regular,
            ),
            TextSpan(
              text: 'dummyjson.com/users',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
