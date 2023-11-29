import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/features/authentication/models/on_boarding_model.dart';
import 'package:flutter/material.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image), height: model.height * 0.4,),
          Column(
            children: [
              Text(model.title, style: Theme.of(context).textTheme.headline4,),
              Text(model.subtitle, textAlign: TextAlign.center,),
            ],
          ),  
          Text(model.counterText, style: Theme.of(context).textTheme.headline6,),
          SizedBox(height: 60.0,),
        ]
      ),
      );
  }
}