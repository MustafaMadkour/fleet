import 'package:fleet/core/constants/route_names.dart';
import 'package:get/get.dart';

abstract class VerifyRegisterAbs extends GetxController {
  checkCode();
  toRegisterSuccess();
}

class VerifyRegisterController extends VerifyRegisterAbs {
  late String code;

  @override
  checkCode() {}

  @override
  toRegisterSuccess() {
    Get.offNamed(AppRoutes.registerSuccess);
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }
}
