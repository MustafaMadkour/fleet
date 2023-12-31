import 'package:fleet/core/constants/route_names.dart';
import 'package:fleet/core/localization/change_locale.dart';
import 'package:fleet/view/widget/language/language_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("language_title".tr,
                style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(
              height: 30,
            ),
            LanguageButton(
              text: "Ar",
              onPressed: () {
                controller.changeLang("ar");
                Get.offNamed(AppRoutes.onBoarrding);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            LanguageButton(
              text: "En",
              onPressed: () {
                controller.changeLang("en");
                Get.offNamed(AppRoutes.onBoarrding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
