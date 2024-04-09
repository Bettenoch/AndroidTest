import 'package:adroidprojects/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:adroidprojects/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Forgot Password',
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBetweenItems),
              Text('Follow the steps below to reset your password',
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: TSizes.spaceBetweenItems * 2,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Email', prefixIcon: Icon(Iconsax.direct_right)),
              ),
              const SizedBox(
                height: TSizes.spaceBetweenSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(() => const ResetPassword()),
                  child: const Text('Submit'),
                ),
              )
            ],
          )),
    );
  }
}
