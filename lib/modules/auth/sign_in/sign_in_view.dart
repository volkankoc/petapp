import 'package:flutter/material.dart';
import 'package:petapp/constants/sizes/button_radius_sizes.dart';
import 'package:petapp/utils/ui/components/custom_elevated_button.dart';
import 'package:petapp/utils/ui/components/custom_text_button.dart';
import 'package:petapp/utils/ui/components/custom_text_field.dart';
import 'package:petapp/utils/ui/components/custom_textform_field.dart';

import '../components/logo_view.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoView(),
              CustomTextFromField(
                minLength: 3,
                textEditingController: usernameController,
                hintText: 'username',
                keyboardType: TextInputType.emailAddress,
              ),
              CustomTextFromField(
                textEditingController: passwordController,
                hintText: 'password',
              ),
              CustomElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                buttonTitle: 'Giriş yap',
                buttonRadius: ButtonRadiusSizes.medium,
              ),
              CustomTextButton(
                onPressed: () {},
                buttonTitle: 'Kayıt ol',
              )
            ],
          ),
        ),
      ),
    );
  }
}
