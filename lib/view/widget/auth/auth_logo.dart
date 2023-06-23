import 'package:fleet/core/constants/image_asset.dart';
import 'package:flutter/material.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 70,
      child: Padding(
        padding: const EdgeInsets.all(0), // Border radius
        child: ClipOval(
          child: Image.asset(
            ImageAsset.appLogo,
          ),
        ),
      ),
    );
  }
}
