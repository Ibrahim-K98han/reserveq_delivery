import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_form.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';
import 'component/remember_component.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: whiteColor,
        ),
        body: Stack(
          children: [
            const CustomImage(
              path: KImages.allScreenBg,
              width: double.maxFinite,
              height: double.maxFinite,
              fit: BoxFit.cover,
            ),
            Container(
              height: size.height,
              width: size.width,
              padding: Utils.symmetric(),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CustomText(
                      text: 'Sign Up as Deliveryman',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: blackColor,
                    ),
                    const CustomText(
                      text: 'Create account and enjoy all services',
                      fontSize: 16.0,
                      color: grayColor,
                    ),
                    Utils.verticalSpace(20.0),
                    Center(
                      child: GestureDetector(
                        onTap: () {},
                        child: DottedBorder(
                          color: grayColor,
                          dashPattern: [8, 4],
                          borderType: BorderType.RRect,
                          radius: Radius.circular(50.r),
                          padding: const EdgeInsets.all(6),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Column(
                                children: [
                                  Utils.verticalSpace(24),
                                  const Icon(
                                    Icons.camera_alt_outlined,
                                    size: 25,
                                  ),
                                  const CustomText(
                                    text: 'Upload Picture',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    decoration: TextDecoration.underline,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Utils.verticalSpace(14),
                    Row(
                      children: [
                        Expanded(
                          child: CustomForm(
                            label: 'First Name',
                            bottomSpace: 16.0,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Devid ',
                                prefixIcon: PrefixIcon(
                                  icon: KImages.userIcons,
                                  iconColor: prefixIconColor,
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              style: Utils.inputTextStyle(),
                            ),
                          ),
                        ),
                        Utils.horizontalSpace(6),
                        Expanded(
                          child: CustomForm(
                            label: 'Last Name',
                            bottomSpace: 16.0,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Malan',
                                prefixIcon: PrefixIcon(
                                  icon: KImages.userIcons,
                                  iconColor: prefixIconColor,
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              style: Utils.inputTextStyle(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // IntlPhoneField(
                    //   // initialCountryCode: settingCubit.defaultPhoneCode,
                    //   // initialValue: state.phoneNumber,
                    //   showDropdownIcon: false,
                    //   disableLengthCheck: true,
                    //   flagsButtonMargin: Utils.symmetric(h: 6.0),
                    //   flagsButtonPadding: Utils.only(bottom: 4.0),
                    //   // dropdownTextStyle: GoogleFonts.inter(
                    //   //     fontSize: 16.0, fontWeight: FontWeight.w500),
                    //   onChanged: (phone) {
                    //     print('number ${phone.number}');
                    //     print('c-code ${phone.countryCode}');
                    //     // signUpBloc.add(
                    //     //     SignUpEventCountryCode(phone.countryCode));
                    //    // signUpBloc.add(SignUpEventNumber(phone.number));
                    //   },
                    //   onCountryChanged: (country) {
                    //     print('country-name ${country.name}');
                    //     // signUpBloc.add(
                    //     //     SignUpEventCountryCode(country.dialCode));
                    //   },
                    //   dropdownIcon: const Icon(
                    //       Icons.keyboard_arrow_down_outlined,
                    //       color: grayColor),
                    //   inputFormatters: [
                    //     // FilteringTextInputFormatter.digitsOnly,
                    //     // FilteringTextInputFormatter.deny('a'),
                    //   ],
                    // ),
                    CustomForm(
                      label: 'Phone Number',
                      bottomSpace: 16.0,
                      child: IntlPhoneField(
                        showDropdownIcon: false,
                        disableLengthCheck: true,
                        //   flagsButtonPadding: Utils.only(bottom: 4.0),
                        flagsButtonMargin: Utils.symmetric(h: 10.0),
                        decoration: const InputDecoration(
                          hintText: '2598798',
                          // border: OutlineInputBorder(
                          //   borderSide: BorderSide(),
                          // ),
                        ),
                        initialCountryCode: 'US',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ),
                    ),

                    CustomForm(
                      label: 'Email',
                      bottomSpace: 16.0,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'your email address',
                          prefixIcon: PrefixIcon(
                            icon: KImages.emailIcons,
                            iconColor: prefixIconColor,
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        style: Utils.inputTextStyle(),
                      ),
                    ),
                    CustomForm(
                      label: 'Password',
                      bottomSpace: 20.0,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          prefixIcon: PrefixIcon(
                            icon: KImages.lockIcons,
                            iconColor: prefixIconColor,
                          ),
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            color: prefixIconColor,
                            size: 25,
                          ),
                        ),
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        style: Utils.inputTextStyle(),
                      ),
                    ),
                    // Utils.verticalSpace(14.0),
                    _buildRemember(),
                    Utils.verticalSpace(20.0),
                    PrimaryButton(
                        text: 'Next',
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RouteNames.signUpWithDoc);
                        }),
                    Utils.verticalSpace(12.0),
                    _createNewAccount(context),
                    Utils.verticalSpace(80.0),
                    //_socialLogin(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget _buildRemember() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Padding(
        //   padding: Utils.only(top: 6.0),
        //   child: Checkbox(
        //       value: true,
        //       activeColor: primaryColor,
        //       onChanged: (bool? val) {}),
        // ),
        const RememberComponent(),
        Flexible(
          child: RichText(
            text: TextSpan(
              text: 'I agree to the company ',
              style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w500, fontSize: 14, color: grayColor),
              children: [
                TextSpan(
                  text: 'Term of Service ',
                  style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: primaryColor),
                ),
                TextSpan(
                  text: 'and ',
                  style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: grayColor),
                ),
                TextSpan(
                  text: 'Privacy Policy',
                  style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: primaryColor),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _createNewAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomText(
          text: "Have an account? ",
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: blackColor,
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, RouteNames.loginScreen),
          child: const CustomText(
            text: 'Sign In',
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: primaryColor,
          ),
        ),
      ],
    );
  }

  Widget _socialLogin() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CustomText(
          text: 'Register with',
          fontSize: 14.0,
          color: grayColor,
        ),
        Utils.verticalSpace(12.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _socialCard(KImages.googleIcon, 'Google'),
            _socialCard(KImages.facebookIcon, 'Facebook'),
          ],
        ),
      ],
    );
  }

  Widget _socialCard(String icon, String name) {
    return Container(
      height: Utils.vSize(52.0),
      width: Utils.hSize(152.0),
      decoration: BoxDecoration(
        borderRadius: Utils.borderRadius(),
        border: Border.all(color: grayColor.withOpacity(0.2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImage(path: icon),
          Utils.horizontalSpace(12.0),
          CustomText(
            text: name,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: blackColor,
          ),
        ],
      ),
    );
  }
}
