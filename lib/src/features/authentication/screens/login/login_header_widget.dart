
import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

import '../../../../constants/image_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(tLoginImage), height: size.height * 0.2,),
        Text(tLoginTitle, style: Theme.of(context).textTheme.headline3),
        Text(tLoginSubTitle, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}