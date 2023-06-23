import 'package:fleet/controller/auth/reset_pass_controller.dart';
import 'package:fleet/core/constants/color.dart';
import 'package:fleet/core/functions/validator.dart';
import 'package:fleet/view/widget/auth/aut_title.dart';
import 'package:fleet/view/widget/auth/auth_body.dart';
import 'package:fleet/view/widget/auth/auth_button.dart';
import 'package:fleet/view/widget/auth/auth_subtitle.dart';
import 'package:fleet/view/widget/auth/auth_textform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPass extends StatelessWidget {
  const ResetPass({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPassController controller = Get.put(ResetPassController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: AuthTitle(
          title: "resetpass_title".tr,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              AuthSubTitle(
                subtitle: "resetpass_subtitle".tr,
              ),
              const SizedBox(
                height: 30,
              ),
              AuthBody(
                bodytext: "resetpass_body".tr,
              ),
              const SizedBox(
                height: 40,
              ),
              GetBuilder<ResetPassController>(
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
                      )),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<ResetPassController>(
                  builder: (controller) => AuthTextForm(
                        isPass: controller.isShowPass,
                        onTapIcon: () {
                          controller.showPass();
                        },
                        isNum: false,
                        labeltext: "pass_confirm_label".tr,
                        hinttext: "pass_confirm_hint".tr,
                        fieldicon: Icons.lock_reset_outlined,
                        validate: (val) {
                          return validator(
                              val!, 5, 30, "pass_confirm_label".tr);
                        },
                      )),
              const SizedBox(
                height: 40,
              ),
              AuthButton(
                text: "save".tr,
                onPressed: () {
                  controller.toResetSuccess();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
