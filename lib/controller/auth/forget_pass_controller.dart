import 'package:fleet/core/constants/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPassAbs extends GetxController {
  checkEmail();
  toVerifyForget();
}

class ForgetPassController extends ForgetPassAbs {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;

  @override
  checkEmail() {}

  @override
  toVerifyForget() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.offNamed(AppRoutes.verifyForget);
    } else {}
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
