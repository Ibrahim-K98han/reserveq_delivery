import 'package:flutter/material.dart';

import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_form.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(),
        body: Stack(
          children: [
            const CustomImage(
              path: KImages.allScreenBg,
              width: double.maxFinite,
              height: double.maxFinite,
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: Utils.symmetric(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomImage(path: KImages.forgotIcons),
                    Utils.verticalSpace(40.0),
                    const CustomText(
                      text: 'Forgot Password?',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: blackColor,
                    ),
                    Utils.verticalSpace(10.0),
                    const CustomText(
                      text:
                          'Don’t worry! it happens. Please enter the address associated with your account',
                      fontSize: 16.0,
                      color: blackColor,
                      height: 1.6,
                    ),
                    Utils.verticalSpace(30.0),
                    CustomForm(
                      label: 'Email Address',
                      bottomSpace: 16.0,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Email address',
                          prefixIcon: PrefixIcon(
                            icon: KImages.emailIcons,
                            iconColor: prefixIconColor,
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        style: Utils.inputTextStyle(),
                      ),
                    ),
                    Utils.verticalSpace(50.0),
                    PrimaryButton(
                      text: 'Send Verification Code',
                      onPressed: () => Navigator.pushNamed(
                        context,
                        RouteNames.verificationCodeScreen,
                      ),
                    ),
                    Utils.verticalSpace(40.0),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
