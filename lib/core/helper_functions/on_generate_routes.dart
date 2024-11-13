import 'package:fast_delivery/bottom_navigation_menu.dart';
import 'package:fast_delivery/features/auth/presentation/screens/choice_login_or_signup_screen.dart';
import 'package:fast_delivery/features/auth/presentation/screens/complete_your_profile_screen.dart';
import 'package:fast_delivery/features/auth/presentation/screens/forget_password_screen.dart';
import 'package:fast_delivery/features/auth/presentation/screens/login_screen.dart';
import 'package:fast_delivery/features/auth/presentation/screens/send_verification.dart';
import 'package:fast_delivery/features/auth/presentation/screens/set_password_screen.dart';
import 'package:fast_delivery/features/auth/presentation/screens/signup_screen.dart';
import 'package:fast_delivery/features/auth/presentation/screens/verify_otp_screen.dart';
import 'package:fast_delivery/features/favourite/presentation/screens/favourite_screen.dart';
import 'package:fast_delivery/features/offer/presentation/screens/offer_screen.dart';
import 'package:fast_delivery/features/onboarding/presentation/screens/on_boarding_screen.dart';
import 'package:fast_delivery/features/profile/presentation/screens/profile_screen.dart';
import 'package:fast_delivery/features/splash/presentation/screens/splash_screen.dart';
import 'package:fast_delivery/features/wallet/presentation/screens/add_amount_screen.dart';
import 'package:fast_delivery/features/wallet/presentation/screens/wallet_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case OnBoardingScreen.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingScreen());
    case ChoiceLoginOrSignupScreen.routeName:
      return MaterialPageRoute(
          builder: (context) => const ChoiceLoginOrSignupScreen());
    case SignupScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SignupScreen());
    case VerifyOtpScreen.routeName:
      final String screenName = settings.arguments as String;

      return MaterialPageRoute(builder: (context) => VerifyOtpScreen(screenName: screenName));
    case SetPasswordScreen.routeName:
      final String screenName = settings.arguments as String;

      return MaterialPageRoute(builder: (context) => SetPasswordScreen(screenName: screenName));
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case SendVerificationScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SendVerificationScreen());
    case ForgetPasswordScreen.routeName:
      return MaterialPageRoute(builder: (context) => const ForgetPasswordScreen());
    case CompleteYourProfileScreen.routeName:
      return MaterialPageRoute(builder: (context) => const CompleteYourProfileScreen());
    case BottomNavigationMenu.routeName:
      final int index = settings.arguments as int;

      return MaterialPageRoute(builder: (context) => BottomNavigationMenu(index: index));
    case FavouriteScreen.routeName:
      return MaterialPageRoute(builder: (context) => const FavouriteScreen());
    case WalletScreen.routeName:
      return MaterialPageRoute(builder: (context) => const WalletScreen());
    case OfferScreen.routeName:
      return MaterialPageRoute(builder: (context) => const OfferScreen());
    case AddAmountScreen.routeName:
      return MaterialPageRoute(builder: (context) => const AddAmountScreen());
    case ProfileScreen.routeName:
      return MaterialPageRoute(builder: (context) => const ProfileScreen());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
