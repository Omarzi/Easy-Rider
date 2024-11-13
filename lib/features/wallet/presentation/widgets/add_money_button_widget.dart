import 'package:fast_delivery/core/utils/exports.dart';

class AddMoneyButtonWidget extends StatelessWidget {
  const AddMoneyButtonWidget({
    super.key,
    required this.buttonName,
    required this.onPressed,
  });

  final String buttonName;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: AppColors.primaryColor700, width: 1),
          borderRadius: BorderRadius.circular(
            AppConstants.borderRadius,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        child: Text(
          buttonName,
          style: TextStyles.bLgMedium.copyWith(
            color: AppColors.primaryColor700,
          ),
        ),
      ),
    );
  }
}
