
import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';

import '../../../../constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: tEmail,
                hintText: tEmail,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: tFormHeight),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp), 
                ),
              ),
            ),
            const SizedBox(height: tFormHeight),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                 child: Text(tForgetPassword),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},
                child: Text(tLogin),
              ),
            ),
          ],
        ),
      ),
      );
  }
}