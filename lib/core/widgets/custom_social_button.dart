import 'package:fast_delivery/core/utils/exports.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final Widget icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0), // Remove default padding for custom container padding
        backgroundColor: AppColors.whiteShade, // Background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius), // Rounded corners
          side: const BorderSide(
            color: AppColors.gray200,
            width: 1,
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15), // Custom padding inside the container
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
