import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:portfolio/configs/config.textStyles.dart';
import 'package:url_launcher/url_launcher.dart';

class LockStatus extends StatelessWidget {
  const LockStatus({Key? key}) : super(key: key);

  get lockLogoColor => Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 1,
              color: lockLogoColor,
            ),
          ),
          child: Icon(
            Icons.lock_rounded,
            size: 60,
            color: lockLogoColor,
          ),
        ),
        SizedBox(height: 24),
        Text(
          "Comming Soon",
          style: MyTextStyles().header,
        ),
        Text(
          "Still piecing together this page...",
          style: MyTextStyles().normalS16_W500_LH22_C737373.copyWith(
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
        ),
        SizedBox(height: 32),
        RichText(
          text: TextSpan(
            style: MyTextStyles()
                .normalS16_W500_LH22_C737373
                .copyWith(color: Colors.black),
            children: [
              TextSpan(
                text: "Visit",
              ),
              TextSpan(
                text: " shopping.google.com",
                style: MyTextStyles().normalS16_W500_LH22_C737373.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch("https://shopping.google.com/");
                  },
              ),
              TextSpan(
                text: " for the live experience or see",
              ),
              TextSpan(
                text: " see more projects here.",
                style: MyTextStyles().normalS16_W500_LH22_C737373.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch("http://www.lisasuefischer.com/");
                  },
              ),
            ],
          ),
        )
      ],
    );
  }
}