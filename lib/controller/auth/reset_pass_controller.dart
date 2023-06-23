import 'package:fleet/core/constants/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPassAbs extends GetxController {
  resetPass();
  toResetSuccess();
}

class ResetPassController extends ResetPassAbs {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController passwordConfirm;
  bool isShowPass = true;

  showPass() {
    isShowPass = isShowPass == true ? false : true;
    update();
  }

  @override
  resetPass() {}

  @override
  toResetSuccess() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.offAllNamed(AppRoutes.resetSuccess);
    } else {}
  }

  @override
  void onInit() {
    password = TextEditingController();
    passwordConfirm = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    passwordConfirm.dispose();
    super.dispose();
  }
}
