import 'package:delivery_ui/presentation/screens/notification/notification_screen.dart';
import 'package:delivery_ui/presentation/screens/order/active_order_screen.dart';
import 'package:delivery_ui/presentation/screens/order/order_details_screen.dart';
import 'package:delivery_ui/presentation/screens/profile/contact_us_screen.dart';
import 'package:delivery_ui/presentation/screens/profile/faq_screen.dart';
import 'package:delivery_ui/presentation/screens/profile/privacy_policy_screen.dart';
import 'package:delivery_ui/presentation/screens/profile/setting_screen.dart';
import 'package:delivery_ui/presentation/screens/profile/terms_condition_screen.dart';
import 'package:delivery_ui/presentation/screens/profile/update_profile_screen.dart';
import 'package:delivery_ui/presentation/screens/transaction/transaction_screen.dart';
import 'package:flutter/material.dart';
import '../screens/authentication/forgot_password_screen.dart';
import '../screens/authentication/login_screen.dart';
import '../screens/authentication/sign_up_screen.dart';
import '../screens/authentication/sign_up_screen_with_document.dart';
import '../screens/authentication/update_password_screen.dart';
import '../screens/authentication/verification_code_screen.dart';
import '../screens/order/completed_order_details_screen.dart';
import '../screens/order/order_status_screen.dart';
import '../screens/transaction/all_transaction_screen.dart';
import '../screens/review/review_screen.dart';
import '../screens/main_screen/main_screen.dart';
import '../screens/on_boarding/on_boarding_screen.dart';
import '../screens/splash/splash_screen.dart';


class RouteNames {
  static const String splashScreen = '/splashScreen';
  static const String onBoardingScreen = '/onBoardingScreen';
  static const String loginScreen = '/loginScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String signUpWithDoc = '/signUpWithDoc';
  static const String forgotPasswordScreen = '/forgotPasswordScreen';
  static const String verificationCodeScreen = '/verificationCodeScreen';
  static const String updatePasswordScreen = '/updatePasswordScreen';


  static const String mainScreen = '/mainScreen';

  static const String activeOrderScreen = '/activeOrderScreen';
  static const String reviewScreen = '/reviewScreen';
  static const String allTransactionScreen = '/allTransactionScreen';
  static const String notificationScreen = '/notificationScreen';
  static const String orderDetailsScreen = '/orderDetailsScreen';
  static const String updateProfileScreen = '/updateProfileScreen';
  static const String settingScreen = '/settingScreen';
  static const String faqScreen = '/faqScreen';
  static const String privacyPolicyScreen = '/privacyPolicyScreen';
  static const String termsConditionScreen = '/termsConditionScreen';
  static const String contactUsScreen = '/contactUsScreen';
  static const String completedOrderDetailsScreen = '/completedOrderDetailsScreen';
  static const String orderStatusScreen = '/orderStatusScreen';



  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const SplashScreen());

      case RouteNames.onBoardingScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const OnBoardingScreen());

      case RouteNames.loginScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const LoginScreen());

      case RouteNames.signUpScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const SignUpScreen());

      case RouteNames.signUpWithDoc:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const SignUpWithDoc());

      case RouteNames.forgotPasswordScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const ForgotPasswordScreen());
      case RouteNames.verificationCodeScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const VerificationCodeScreen());
      case RouteNames.updatePasswordScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const UpdatePasswordScreen());


      case RouteNames.mainScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const MainScreen());

      case RouteNames.activeOrderScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const ActiveOrderScreen());

      case RouteNames.reviewScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const ReviewScreen());


      case RouteNames.allTransactionScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const AllTransactionScreen());

      case RouteNames.notificationScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const NotificationScreen());

      case RouteNames.orderDetailsScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const OrderDetailsScreen());

      case RouteNames.updateProfileScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const UpdateProfileScreen());

      case RouteNames.settingScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const SettingScreen());

      case RouteNames.faqScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const FaqScreen());

      case RouteNames.privacyPolicyScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const PrivacyPolicyScreen());

      case RouteNames.termsConditionScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const TermsConditionScreen());

      case RouteNames.contactUsScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const ContactUsScreen());

        case RouteNames.completedOrderDetailsScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const CompletedOrderDetailsScreen());
        case RouteNames.orderStatusScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const OrderStatusScreen());


      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No Route Found ${settings.name}'),
            ),
          ),
        );
    }
  }
}
