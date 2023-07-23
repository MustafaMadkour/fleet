import 'package:fleet/core/class/statusrequest.dart';
import 'package:fleet/core/constants/route_names.dart';
import 'package:fleet/core/functions/handlingdata.dart';
import 'package:fleet/data/datasource/remote/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class RegisterAbs extends GetxController {
  register();
  toLogin();
}

class RegisterController extends RegisterAbs {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  bool isShowPass = true;
  RegisterData registerData = RegisterData(Get.find());
  List data = [];

  StatusRequest? statusRequest;

  showPass() {
    isShowPass = isShowPass == true ? false : true;
    update();
  }

  @override
  register() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response =
          await registerData.postData(username.text, email.text, password.text);
      statusRequest = handlingData(response);

      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoutes.verifyRegister);
        } else {
          Get.defaultDialog(
              title: "Please Login",
              middleText: "User with this email already exists");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
      //
    } else {}
  }

  @override
  toLogin() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
