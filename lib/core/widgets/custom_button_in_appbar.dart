import 'package:fast_delivery/core/utils/exports.dart';

class CustomButtonInAppBar extends StatelessWidget {
  const CustomButtonInAppBar({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final Widget icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: AppColors.primaryColor100,
          borderRadius: BorderRadius.circular(AppConstants.borderRadius / 2),
        ),
        child: icon,
      ),
      color: AppColors.contentSecondary,
      onPressed: onPressed,
    );
  }
}