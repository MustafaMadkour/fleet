
import 'package:fleet/controller/auth/verify_forget_controller.dart';
import 'package:fleet/core/constants/color.dart';
import 'package:fleet/view/widget/auth/aut_title.dart';
import 'package:fleet/view/widget/auth/auth_body.dart';
import 'package:fleet/view/widget/auth/auth_button.dart';
import 'package:fleet/view/widget/auth/auth_otp.dart';
import 'package:fleet/view/widget/auth/auth_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyForget extends StatelessWidget {
  const VerifyForget({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyForgetController controller = Get.put(VerifyForgetController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: AuthTitle(
          title: "verify_title".tr,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            AuthSubTitle(
              subtitle: "verify_subtitle".tr,
            ),
            const SizedBox(
              height: 30,
            ),
            AuthBody(
              bodytext: "verify_body".tr,
            ),
            const SizedBox(
              height: 40,
            ),
            AuthOtp(
              onSubmit: (code) {
                controller.toResetPass();
              },
            ),
            const SizedBox(
              height: 40,
            ),
            AuthButton(
              text: "verify".tr,
              onPressed: () {
                // controller.toVerifyForget();
              },
            ),
          ],
        ),
      ),
    );
  }
}
