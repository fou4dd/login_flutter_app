import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../models/on_boarding_model.dart';

class OnBoardingController extends GetxController{

  final controller = LiquidController();
  RxInt currentPage = 0.obs;  

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
      title: tOnBoardingTitle1,
      subtitle: tOnBoardingSubTitle1,
      image: tOnBoardingBakery,
      counterText: tOnBoardingCounter1,
      bgColor: tOnBoardingPage1Color,
    ),),

    OnBoardingPageWidget(model: OnBoardingModel(
      title: tOnBoardingTitle2,
      subtitle: tOnBoardingSubTitle2,
      image: tOnBoardingBrownies,
      counterText: tOnBoardingCounter2,
      bgColor: tOnBoardingPage2Color,
    ),),

    OnBoardingPageWidget(model: OnBoardingModel(
      title: tOnBoardingTitle3,
      subtitle: tOnBoardingSubTitle3,
      image: tOnBoardingFlowers,
      counterText: tOnBoardingCounter3,
      bgColor: tOnBoardingPage3Color,
    ),),
  ];

  onPageChangeCallBack(int activePageIndex) => currentPage.value = activePageIndex;  


  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
    
  }
}