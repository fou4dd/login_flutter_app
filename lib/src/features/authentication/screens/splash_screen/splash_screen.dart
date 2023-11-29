import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({Key? key}) : super(key: key);


@override
Widget build(BuildContext context){
  return const Scaffold(
    body: Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: Image(image: AssetImage(tSplashScreen),
          ),
        ),
        Positioned(
          top: 80,
          left: tDefaultSize,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tAppName),
              Text(tAppTagLine,),
            ],
          ),
          ),
      ],
        ),
    );
}
}