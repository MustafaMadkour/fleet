import 'package:fleet/core/constants/route_names.dart';
import 'package:get/get.dart';

abstract class VerifyForgetAbs extends GetxController {
  checkCode();
  toResetPass();
}

class VerifyForgetController extends VerifyForgetAbs {
  late String code;

  @override
  checkCode() {}

  @override
  toResetPass() {
    Get.offNamed(AppRoutes.resetPass);
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }
}
