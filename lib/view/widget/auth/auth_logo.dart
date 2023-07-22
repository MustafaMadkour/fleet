import 'package:fleet/core/constants/image_asset.dart';
import 'package:flutter/material.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageAsset.appLogo,
      width: 200,
      height: 200,
    );
  }
}
