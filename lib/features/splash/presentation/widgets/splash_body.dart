import 'package:fast_delivery/core/utils/exports.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {

  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      color: AppColors.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.svgAppLogo),
          const SizedBox(height: 63),
          CircularProgressIndicator(
            backgroundColor: AppColors.backgroundColorWithOpacity2,
            color: AppColors.whiteShade,
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.whiteShade),
            strokeWidth: 3,
          ),
        ],
      ),
    );
  }

  void executeNavigation() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
          context, OnBoardingScreen.routeName, (route) => false);
    });
  }
}
