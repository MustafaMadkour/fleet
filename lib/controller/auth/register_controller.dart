import 'package:fleet/core/constants/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class RegisterAbs extends GetxController {
  register();
  toLogin();
}

class RegisterController extends RegisterAbs {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController passwordConfirm;
  bool isShowPass = true;

  showPass() {
    isShowPass = isShowPass == true ? false : true;
    update();
  }

  @override
  register() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.offNamed(AppRoutes.verifyRegister);
    } else {}
  }

  @override
  toLogin() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    passwordConfirm = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    phone.dispose();
    email.dispose();
    password.dispose();
    passwordConfirm.dispose();
    super.dispose();
  }
}
