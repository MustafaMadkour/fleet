import 'package:fleet/bindings/initialbinding.dart';
import 'package:fleet/core/localization/change_locale.dart';
import 'package:fleet/core/localization/translation.dart';
import 'package:fleet/core/services/services.dart';
import 'package:fleet/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      title: 'Fleet',
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      theme: controller.appTheme,
      getPages: routes,
      initialBinding: InitialBindings(),
    );
  }
}
