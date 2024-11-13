import 'package:fast_delivery/core/utils/exports.dart';

class SkipButtonWidget extends StatelessWidget {
  const SkipButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 16,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            ChoiceLoginOrSignupScreen.routeName,
            (route) => false,
          );
        },
        child: Text(
          'Skip',
          style: TextStyles.subHeadLineRegular.copyWith(
            color: AppColors.contentSecondary,
          ),
        ),
      ),
    );
  }
}
