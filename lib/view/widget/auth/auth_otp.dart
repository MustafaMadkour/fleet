import 'package:fleet/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class AuthOtp extends StatelessWidget {
  final void Function(String code)? onSubmit;
  const AuthOtp({super.key, this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
              numberOfFields: 5,
              borderRadius: BorderRadius.circular(10),
              focusedBorderColor: AppColor.primaryColor,
              cursorColor: AppColor.primaryColor,
              showFieldAsBox: true,
              onSubmit: onSubmit,
            );
  }
}