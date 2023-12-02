import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

class WelcomScreen extends StatelessWidget{

  const WelcomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    var isDarkMode = brightness == Brightness.dark;
    var height = mediaQuery.size.height;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(tWelcomImage), height: height * 0.5,),
            Column(
              children: [
                Text(tWelcomTitle, style: Theme.of(context).textTheme.headline4, ),
                Text(tWelcomSubTitle, style: Theme.of(context).textTheme.headline6, textAlign: TextAlign.center,),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: (){},
                    child: Text(tLogin.toUpperCase()))
                  ),
                SizedBox(width: 10.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){}, 
                    child: Text(tSignup.toUpperCase()))),
              ],
            ),
          ],
        ),
      ),
    );

  }


}