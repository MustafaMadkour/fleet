import 'package:fleet/core/constants/image_asset.dart';
import 'package:fleet/data/model/onboarding_model.dart';
import 'package:get/get.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "onboarding_title_one".tr,
      body: "onboarding_body_one".tr,
      image: ImageAsset.onBoardingImgOne),
  OnBoardingModel(
      title: "onboarding_title_two".tr,
      body: "onboarding_body_two".tr,
      image: ImageAsset.onBoardingImgTwo),
  OnBoardingModel(
      title: "onboarding_title_three".tr,
      body: "onboarding_body_three".tr,
      image: ImageAsset.onBoardingImgThree),
];
