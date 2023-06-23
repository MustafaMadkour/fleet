// ignore_for_file: body_might_complete_normally_nullable


import 'package:fleet/core/constants/route_names.dart';
import 'package:fleet/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("onboarding") == "1") {
      return const RouteSettings(name: AppRoutes.login);
    }
  }
}
