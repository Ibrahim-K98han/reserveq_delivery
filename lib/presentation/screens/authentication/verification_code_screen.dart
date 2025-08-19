import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_form.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: Utils.symmetric(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomImage(path: KImages.forgotIcons),
              Utils.verticalSpace(40.0),
              const CustomText(
                text: 'Verification OTP',
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                color: blackColor,
              ),
              Utils.verticalSpace(10.0),
              const CustomText(
                textAlign: TextAlign.center,
                text:
                    'Please check your email or Phone to see the verification code.',
                fontSize: 14.0,
                color: grayColor,
              ),
              Utils.verticalSpace(40.0),
              CustomForm(
                label: '',
                bottomSpace: 16.0,
                child: Pinput(
                  defaultPinTheme: PinTheme(
                    width: Utils.vSize(50),
                    height: Utils.vSize(50),
                    textStyle: GoogleFonts.plusJakartaSans(
                        color: blackColor,
                        fontSize: 26.0,
                        fontWeight: FontWeight.w700),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(color: primaryColor),
                      borderRadius: Utils.borderRadius(r: 10.0),
                    ),
                  ),
                  length: 4,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Send code reload in',
                    fontSize: 16.0,
                    color: blackColor,
                  ),
                  CustomText(
                    text: '03:30',
                    fontSize: 14.0,
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              Utils.verticalSpace(20.0),
              PrimaryButton(
                text: 'Verify',
                fontWeight: FontWeight.w500,
                onPressed: () => Navigator.pushNamed(
                  context,
                  RouteNames.updatePasswordScreen,
                ),
              ),
              Utils.verticalSpace(40.0),
            ],
          ),
        ),
      ),
    );
  }
}
