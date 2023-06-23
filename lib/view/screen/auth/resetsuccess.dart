import 'package:fleet/controller/auth/reset_success_controller.dart';
import 'package:fleet/core/constants/color.dart';
import 'package:fleet/view/widget/auth/aut_title.dart';
import 'package:fleet/view/widget/auth/auth_body.dart';
import 'package:fleet/view/widget/auth/auth_button.dart';
import 'package:fleet/view/widget/auth/auth_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetSuccess extends StatelessWidget {
  const ResetSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    ResetSuccessController controller = Get.put(ResetSuccessController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: AuthTitle(
          title: "success_title".tr,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            AuthSubTitle(
              subtitle: "success_subtitle".tr,
            ),
            const SizedBox(
              height: 30,
            ),
            AuthBody(
              bodytext: "success_body".tr,
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: AppColor.primaryColor,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            AuthButton(
              text: "signin".tr,
              onPressed: () {
                controller.toLogin();
              },
            )
          ],
        ),
      ),
    );
  }
}
