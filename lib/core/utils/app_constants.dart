import 'package:fast_delivery/core/utils/exports.dart';

class AppConstants {
  
  static const borderRadius = 8.0;
  static const padding16 = 16.0;

  static List<OfferModel> offers = [
    OfferModel(
      imageOfferUrl: Assets.svgImage1InOffer,
      title: 'Discount 15% off',
      subTitle: 'Special Promo valid for Black Friday',
    ),
    OfferModel(
      imageOfferUrl: Assets.svgImage2InOffer,
      title: 'Discount 10% off',
      subTitle: 'Special Promo valid for Black Friday',
    ),
    OfferModel(
      imageOfferUrl: Assets.svgImage3InOffer,
      title: 'Discount 5% off',
      subTitle: 'Special Promo valid for Black Friday',
    ),
    OfferModel(
      imageOfferUrl: Assets.svgImage4InOffer,
      title: 'Discount 15% off',
      subTitle: 'Special Promo valid for Black Friday',
    ),

    OfferModel(
      imageOfferUrl: Assets.svgImage1InOffer,
      title: 'Discount 15% off',
      subTitle: 'Special Promo valid for Black Friday',
    ),
    OfferModel(
      imageOfferUrl: Assets.svgImage2InOffer,
      title: 'Discount 10% off',
      subTitle: 'Special Promo valid for Black Friday',
    ),
    OfferModel(
      imageOfferUrl: Assets.svgImage3InOffer,
      title: 'Discount 5% off',
      subTitle: 'Special Promo valid for Black Friday',
    ),
    OfferModel(
      imageOfferUrl: Assets.svgImage4InOffer,
      title: 'Discount 15% off',
      subTitle: 'Special Promo valid for Black Friday',
    ),
  ];

  static List<Map<String, dynamic>> paymentMethods = [
    {
      'icon': SvgPicture.asset(Assets.svgVisaImage),
      'title': '**** **** **** 8970',
      'subtitle': 'Expires: 12/26',
    },
    {
      'icon': SvgPicture.asset(Assets.svgMasterCardImage),
      'title': '**** **** **** 1234',
      'subtitle': 'Expires: 11/25',
    },
    {
      'icon': SvgPicture.asset(Assets.svgPaypalImage),
      'title': 'mailaddress@mail.com',
      'subtitle': 'Expires: 12/26',
    },
    {
      'icon': SvgPicture.asset(Assets.svgCashImage),
      'title': 'Cash',
      'subtitle': 'Expires: 12/26',
    },
  ];

  static const List<String> placesName = [
    'Office',
    'Home',
    'Office',
    'House',
    'Home',
    'Office',
    'House',
    'Home',
    'Office',
  ];

  static List<TransactionModel> transactionList = [
    TransactionModel(date: 'Today at 09:20 am', title: 'Walton', amount: '-\$570.00', type: 'income'),
    TransactionModel(date: 'Today at 09:20 am', title: 'Nathsam', amount: '-\$570.00', type: 'outcome'),
    TransactionModel(date: 'Today at 09:20 am', title: 'Walton', amount: '-\$570.00', type: 'outcome'),
    TransactionModel(date: 'Today at 09:20 am', title: 'Anathema', amount: '-\$570.00', type: 'income'),
    TransactionModel(date: 'Today at 09:20 am', title: 'Walton', amount: '-\$570.00', type: 'income'),
    TransactionModel(date: 'Today at 09:20 am', title: 'Nathsam', amount: '-\$570.00', type: 'outcome'),
    TransactionModel(date: 'Today at 09:20 am', title: 'Walton', amount: '-\$570.00', type: 'income'),
  ];

  static const List<String> placesLocationsDescription = [
    '2972 Westheimer Rd. Santa Ana, Illinois 85486 ',
    '2972 Westheimer Rd. Santa Ana, Illinois 85486 ',
    '2972 Westheimer Rd. Santa Ana, Illinois 85486 ',
    '2972 Westheimer Rd. Santa Ana, Illinois 85486 ',
    '2972 Westheimer Rd. Santa Ana, Illinois 85486 ',
    '2972 Westheimer Rd. Santa Ana, Illinois 85486 ',
    '2972 Westheimer Rd. Santa Ana, Illinois 85486 ',
    '2972 Westheimer Rd. Santa Ana, Illinois 85486 ',
    '2972 Westheimer Rd. Santa Ana, Illinois 85486 ',
  ];

  static const List<Widget> onboardingContent = [
    OnboardingContentWidget(
      imagePath: Assets.svgOnboardingImage1,
      title: 'Anywhere you are',
      description:
      'Sell houses easily with the help of\n Listenoryx and to make this line big\n I am writing more.',
      spaceBetweenImageAndText: 43,
    ),
    OnboardingContentWidget(
      imagePath: Assets.svgOnboardingImage2,
      title: 'At anytime',
      description:
      'Sell houses easily with the help of\n Listenoryx and to make this line big I\n am writing more.',
      spaceBetweenImageAndText: 40,
    ),
    OnboardingContentWidget(
      imagePath: Assets.svgOnboardingImage3,
      title: 'Book your car',
      description:
      'Sell houses easily with the help of\n Listenoryx and to make this line big I\n am writing more.',
      isLastPage: true,
      spaceBetweenImageAndText: 52,
    ),
  ];

  static const String appName = "Fast Delivery";
  static const String appVersion = "1.0.0";
  static const String appBuildNumber = "1";
  static const String appPackageName = "com.fast.delivery.fast_delivery";

  static String get appFullName => "$appName $appVersion ($appBuildNumber)";
  static String get appPackageNameWithDot => "$appPackageName.";
  static String get appPackageNameWithSlash => "$appPackageName/";
}