import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/models/on_boarding_model.dart';
import 'package:login_flutter_app/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget{
  const OnBoardingScreen ({Key? key}) : super(key: key);

@override
Widget build(BuildContext context){
  final size = MediaQuery.of(context).size;

  final pages = [
    OnBoardingPageWidget(model: OnBoardingModel(
      title: tOnBoardingTitle1,
      subtitle: tOnBoardingSubTitle1,
      image: tOnBoardingBakery,
      counterText: tOnBoardingCounter1,
      height: size.height,
      bgColor: tOnBoardingPage1Color,
    ),),

    OnBoardingPageWidget(model: OnBoardingModel(
      title: tOnBoardingTitle2,
      subtitle: tOnBoardingSubTitle2,
      image: tOnBoardingBrownies,
      counterText: tOnBoardingCounter2,
      height: size.height,
      bgColor: tOnBoardingPage2Color,
    ),),

    OnBoardingPageWidget(model: OnBoardingModel(
      title: tOnBoardingTitle3,
      subtitle: tOnBoardingSubTitle3,
      image: tOnBoardingFlowers,
      counterText: tOnBoardingCounter3,
      height: size.height,
      bgColor: tOnBoardingPage3Color,
    ),),
  ];

  final controller = LiquidController();

  return Scaffold(
    body: Stack(
      alignment: Alignment.center,
      children: [
        LiquidSwipe(
          pages: pages,
          slideIconWidget: const Icon(Icons.arrow_back_ios),
          enableSideReveal: true,
        ),
        Positioned(
          bottom: 60.0,
          child: OutlinedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.black26),
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(20),
              onPrimary: Colors.white,
            ),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.black87,
                shape: BoxShape.circle,
                ),
              child: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        ),
        Positioned(
          top: 50,
          right: 20,
          child: TextButton(
            onPressed: (){},
            child: const Text("Skip", style: TextStyle(color: Colors.grey),),
          ),
        ),
        Positioned(
          bottom: 10,
          child: AnimatedSmoothIndicator(
            activeIndex: controller.currentPage,
            count: 3,
            effect: const WormEffect(
              activeDotColor: Color(0xff272727),
              dotHeight: 5.0,
            ),
            ),
        ),
      ],
    ),
  );
}

}

