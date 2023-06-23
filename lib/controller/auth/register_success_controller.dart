import 'package:fleet/core/constants/route_names.dart';
import 'package:get/get.dart';

abstract class RegisterSuccessAbs extends GetxController {
  toLogin();
}

class RegisterSuccessController extends RegisterSuccessAbs {
  @override
  toLogin() {
    Get.offAllNamed(AppRoutes.login);
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }
  
}