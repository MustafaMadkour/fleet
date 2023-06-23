import 'package:fleet/core/constants/route_names.dart';
import 'package:fleet/core/middleware/base_middleware.dart';
import 'package:fleet/view/screen/auth/forgetpass.dart';
import 'package:fleet/view/screen/auth/login.dart';
import 'package:fleet/view/screen/auth/register.dart';
import 'package:fleet/view/screen/auth/registersuccess.dart';
import 'package:fleet/view/screen/auth/resetpass.dart';
import 'package:fleet/view/screen/auth/resetsuccess.dart';
import 'package:fleet/view/screen/auth/verifyforget.dart';
import 'package:fleet/view/screen/auth/verifyregister.dart';
import 'package:fleet/view/screen/language.dart';
import 'package:fleet/view/screen/onboarding.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  // onboarding
  GetPage(name: AppRoutes.onBoarrding, page: () => const OnBoarding()),

  // Language
  GetPage(
    name: "/",
    page: () => const Language(),
    middlewares: [
      BaseMiddleware(),
    ],
  ),
  // GetPage(
  //   name: "/",
  //   page: () => const TestView(),
  // ),

  // Auth
  GetPage(name: AppRoutes.login, page: () => const Login()),
  GetPage(name: AppRoutes.register, page: () => const Register()),
  GetPage(name: AppRoutes.verifyRegister, page: () => const VerifyRegister()),
  GetPage(name: AppRoutes.registerSuccess, page: () => const RegisterSuccess()),
  GetPage(name: AppRoutes.forgetPass, page: () => const ForgetPass()),
  GetPage(name: AppRoutes.verifyForget, page: () => const VerifyForget()),
  GetPage(name: AppRoutes.resetPass, page: () => const ResetPass()),
  GetPage(name: AppRoutes.resetSuccess, page: () => const ResetSuccess()),
];
