import 'package:fleet/core/constants/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginAbst extends GetxController {
  login();
  toRegster();
  toForgetPass();
}

class LoginController extends LoginAbst {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isShowPass = true;

  showPass() {
    isShowPass = isShowPass == true ? false : true;
    update();
  }

  @override
  login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {

    } else {
      
    }
  }

  @override
  toRegster() {
    Get.offNamed(AppRoutes.register);
  }

  @override
  toForgetPass() {
    Get.offNamed(AppRoutes.forgetPass);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  
  
}
