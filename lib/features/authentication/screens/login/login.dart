import 'package:adroidprojects/common/styles/spacing_styles.dart';
import 'package:adroidprojects/features/authentication/screens/login/widgets/login_form.dart';
import 'package:adroidprojects/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold (
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              TLoginHeader(),
              TLoginForm(),
              TFormDivider(dividerText: 'or login with'),
              SizedBox(height: TSizes.spaceBetweenSections),
              TSocialButtons()
            ],
            )
          )
        )
      );
  }
}





