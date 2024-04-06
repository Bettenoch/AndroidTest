import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBetweenSections),
        child: Column(
          children: [
            TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: 'E-Mail'
                )
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: 'Password',
                  suffixIcon: Icon(Iconsax.eye_slash),
                )
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields/2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text('Remember me'),
                  ],
                ),
                TextButton(onPressed: () {}, child: const Text('Forgot Password'))
              ],
            ),
            const SizedBox(height: TSizes.spaceBetweenSections),
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Sign In'))),
            const SizedBox(height: TSizes.spaceBetweenItems),
            SizedBox(width: double.infinity, child: OutlinedButton(onPressed: (){}, child: const Text('Create Account'))),

          ],

        ),
      ),
    );
  }
}
