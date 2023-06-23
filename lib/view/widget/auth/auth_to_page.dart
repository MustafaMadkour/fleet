import 'package:fleet/core/constants/color.dart';
import 'package:flutter/material.dart';

class AuthToPage extends StatelessWidget {
  final String text;
  final String linkText;
  final void Function()? onTap;
  const AuthToPage({super.key, required this.text, required this.linkText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(text),
                InkWell(
                  onTap: onTap,
                  child: Text(
                    linkText,
                    style: const TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            );
  }
}