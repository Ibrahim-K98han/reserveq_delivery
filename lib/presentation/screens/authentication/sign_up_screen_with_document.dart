import 'package:delivery_ui/presentation/widgets/custom_dialog.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../data/dummy_data.dart';
import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_form.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';
import 'component/remember_component.dart';

class SignUpWithDoc extends StatelessWidget {
  const SignUpWithDoc({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
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
            Container(
              height: size.height,
              width: size.width,
              padding: Utils.symmetric(),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Utils.verticalSpace(20.0),
                    const CustomText(
                      text: 'Sign Up as Deliveryman ',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: blackColor,
                    ),
                    const CustomText(
                      text: 'Create account and enjoy all services',
                      fontSize: 16.0,
                      color: grayColor,
                    ),
                    Utils.verticalSpace(31.0),
                    Row(
                      children: [
                        Expanded(
                          child: CustomForm(
                            label: 'Type of work',
                            bottomSpace: 10.0,
                            child: DropdownButtonFormField<ServiceCat>(
                              //value: _cityModel,
                              dropdownColor: whiteColor,
                              hint: const CustomText(
                                text: 'Freelancer',
                              ),
                              icon: const Icon(
                                  Icons.keyboard_arrow_down_outlined),
                              decoration: const InputDecoration(
                                isDense: true,
                                // border: OutlineInputBorder(
                                //   borderRadius: BorderRadius.all(Radius.circular(5)),
                                // ),
                              ),
                              onTap: () {
                                Utils.closeKeyBoard(context);
                              },
                              onChanged: (value) {},
                              isDense: true,
                              isExpanded: true,
                              items: works.map<DropdownMenuItem<ServiceCat>>(
                                  (ServiceCat value) {
                                return DropdownMenuItem<ServiceCat>(
                                    value: value, child: Text(value.name));
                              }).toList(),
                            ),
                          ),
                        ),
                        Utils.horizontalSpace(8),
                        Expanded(
                          child: CustomForm(
                            label: 'Location',
                            bottomSpace: 10.0,
                            child: DropdownButtonFormField<ServiceCat>(
                              dropdownColor: whiteColor,
                              //value: _cityModel,
                              hint: const CustomText(
                                text: 'Dhaka',
                              ),
                              icon: const Icon(
                                  Icons.keyboard_arrow_down_outlined),
                              decoration: const InputDecoration(
                                isDense: true,
                                // border: OutlineInputBorder(
                                //   borderRadius: BorderRadius.all(Radius.circular(5)),
                                // ),
                              ),
                              onTap: () {
                                Utils.closeKeyBoard(context);
                              },
                              onChanged: (value) {},
                              isDense: true,
                              isExpanded: true,
                              items: locations
                                  .map<DropdownMenuItem<ServiceCat>>(
                                      (ServiceCat value) {
                                return DropdownMenuItem<ServiceCat>(
                                    value: value, child: Text(value.name));
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    CustomForm(
                      label: 'Select Vehicle Type',
                      bottomSpace: 10.0,
                      child: DropdownButtonFormField<ServiceCat>(
                        //value: _cityModel,
                        dropdownColor: whiteColor,
                        hint: const CustomText(
                          text: 'Bike',
                        ),
                        icon: const Icon(Icons.keyboard_arrow_down_outlined),
                        decoration: const InputDecoration(
                          isDense: true,
                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.all(Radius.circular(5)),
                          // ),
                        ),
                        onTap: () {
                          Utils.closeKeyBoard(context);
                        },
                        onChanged: (value) {},
                        isDense: true,
                        isExpanded: true,
                        items: vehicles.map<DropdownMenuItem<ServiceCat>>(
                            (ServiceCat value) {
                          return DropdownMenuItem<ServiceCat>(
                              value: value, child: Text(value.name));
                        }).toList(),
                      ),
                    ),
                    CustomForm(
                      label: 'Select Document Type',
                      bottomSpace: 10.0,
                      child: DropdownButtonFormField<ServiceCat>(
                        //value: _cityModel,
                        dropdownColor: whiteColor,
                        hint: const CustomText(
                          text: 'National ID',
                        ),
                        icon: const Icon(Icons.keyboard_arrow_down_outlined),
                        decoration: const InputDecoration(
                          isDense: true,
                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.all(Radius.circular(5)),
                          // ),
                        ),
                        onTap: () {
                          Utils.closeKeyBoard(context);
                        },
                        onChanged: (value) {},
                        isDense: true,
                        isExpanded: true,
                        items: documents.map<DropdownMenuItem<ServiceCat>>(
                            (ServiceCat value) {
                          return DropdownMenuItem<ServiceCat>(
                              value: value, child: Text(value.name));
                        }).toList(),
                      ),
                    ),

                    CustomForm(
                      label: 'Document ID',
                      bottomSpace: 16.0,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: '7458465',
                          // prefixIcon: PrefixIcon(icon: KImages.emailIcons),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        style: Utils.inputTextStyle(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: DottedBorder(
                        color: grayColor,
                        dashPattern: [8, 4],
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(12),
                        padding: const EdgeInsets.all(6),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          child: SizedBox(
                            height: 120.0,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Utils.verticalSpace(24),
                                const Icon(
                                  Icons.camera_alt_outlined,
                                  size: 28,
                                ),
                                Utils.verticalSpace(4),
                                const CustomText(
                                  text: 'Upload Document',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Utils.verticalSpace(14.0),
                    _buildRemember(),
                    Utils.verticalSpace(20.0),
                    PrimaryButton(
                      fontWeight: FontWeight.w500,
                        text: 'Submit',
                        onPressed: () {
                          // Navigator.pushNamed(context, RouteNames.mainScreen);
                          showDialog(
                            //barrierDismissible: false,
                            context: context,
                            builder: (context) => FeedBackDialog(
                              height: Utils.vSize(190.0),
                              image: KImages.signupSuccess,
                              message:
                                  'Successfully! Delivery \n   Man Registration',
                              child: Column(
                                children: [
                                  Utils.verticalSpace(30.0),
                                  PrimaryButton(
                                      text: 'Back to login',
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, RouteNames.loginScreen);
                                      }),
                                ],
                              ),
                            ),
                          );
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
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
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
