import 'package:fleet/controller/auth/register_controller.dart';
import 'package:fleet/core/constants/color.dart';
import 'package:fleet/core/functions/alertexitapp.dart';
import 'package:fleet/core/functions/validator.dart';
import 'package:fleet/view/widget/auth/aut_title.dart';
import 'package:fleet/view/widget/auth/auth_body.dart';
import 'package:fleet/view/widget/auth/auth_button.dart';
import 'package:fleet/view/widget/auth/auth_subtitle.dart';
import 'package:fleet/view/widget/auth/auth_textform.dart';
import 'package:fleet/view/widget/auth/auth_to_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterController controller = Get.put(RegisterController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: AuthTitle(
          title: "register_title".tr,
        ),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                // const SizedBox(
                //   height: 10,
                // ),
                AuthSubTitle(
                  subtitle: "register_subtitle".tr,
                ),
                const SizedBox(
                  height: 10,
                ),
                AuthBody(
                  bodytext: "register_body".tr,
                ),
                const SizedBox(
                  height: 15,
                ),
                AuthTextForm(
                  isNum: false,
                  labeltext: "username_label".tr,
                  hinttext: "username_hint".tr,
                  fieldicon: Icons.person,
                  myController: controller.username,
                  validate: (val) {
                    return validator(val!, 5, 100, "username_label".tr);
                  },
                ),
                // const SizedBox(
                //   height: 15,
                // ),
                // AuthTextForm(
                //   isNum: true,
                //   labeltext: "phone_label".tr,
                //   hinttext: "phone_hint".tr,
                //   fieldicon: Icons.phone_android_outlined,
                //   myController: controller.phone,
                //   validate: (val) {
                //     return validator(val!, 5, 12, "phone_label".tr);
                //   },
                // ),
                const SizedBox(
                  height: 15,
                ),
                AuthTextForm(
                  isNum: false,
                  labeltext: "email_label".tr,
                  hinttext: "email_hint".tr,
                  fieldicon: Icons.email_outlined,
                  myController: controller.email,
                  validate: (val) {
                    return validator(val!, 5, 100, "email_label".tr);
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                GetBuilder<RegisterController>(
                  builder: (controller) => AuthTextForm(
                    isPass: controller.isShowPass,
                    onTapIcon: () {
                      controller.showPass();
                    },
                    isNum: false,
                    labeltext: "pass_label".tr,
                    hinttext: "pass_hint".tr,
                    fieldicon: Icons.lock_outline,
                    myController: controller.password,
                    validate: (val) {
                      return validator(val!, 5, 30, "pass_label".tr);
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // GetBuilder<RegisterController>(
                //   builder: (controller) => AuthTextForm(
                //     isPass: controller.isShowPass,
                //     onTapIcon: () {
                //       controller.showPass();
                //     },
                //     isNum: false,
                //     labeltext: "pass_confirm_label".tr,
                //     hinttext: "pass_confirm_hint".tr,
                //     fieldicon: Icons.lock_reset_outlined,
                //     validate: (val) {
                //       return validator(val!, 5, 30, "pass_confirm_label".tr);
                //     },
                //   ),
                // ),
                const SizedBox(
                  height: 15,
                ),
                AuthButton(
                  text: "signup".tr,
                  onPressed: () {
                    controller.register();
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                AuthToPage(
                  text: "to_signin".tr,
                  linkText: "signin".tr,
                  onTap: () {
                    controller.toLogin();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
