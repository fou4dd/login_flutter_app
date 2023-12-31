import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/commom_widgets/form_header_widget.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget{
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child:  Column(
              children: [
                const FormHeaderWidget(
                  image: tWelcomImage,
                  title: tSignupTitle,
                  subTitle: tSignupSubTitle,
                ),
                const SignUpFormWidget(),
                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: (){},
                        icon: const Image(image: AssetImage(tGoogleIcon), width: 20.0,),
                        label: Text(tSignInWithGoogle.toUpperCase()),
                        ),
                    ),
                    TextButton(
                      onPressed: (){}, 
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: tAlreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyText1),
                            TextSpan(text: tLogin.toUpperCase()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}

