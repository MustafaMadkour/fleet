import 'package:fleet/core/constants/route_names.dart';
import 'package:get/get.dart';

abstract class ResetSuccessAbs extends GetxController {
  toLogin();
}

class ResetSuccessController extends ResetSuccessAbs {
  @override
  toLogin() {
    Get.offAllNamed(AppRoutes.login);
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }
}
