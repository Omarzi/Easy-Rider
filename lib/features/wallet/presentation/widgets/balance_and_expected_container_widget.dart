import 'package:fast_delivery/core/utils/exports.dart';

class BalanceAndExpendContainerWidget extends StatelessWidget {
  const BalanceAndExpendContainerWidget({
    super.key,
    required this.number,
    required this.description,
  });

  final String number;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 35),
        decoration: BoxDecoration(
          color: AppColors.primaryColor50,
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          border: Border.all(
            color: AppColors.primaryColor,
            width: 1,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number,
                style: TextStyles.bLgMedium.copyWith(
                  color: AppColors.gray700,
                ),
              ),
              const SizedBox(height: 21),
              Text(
                description,
                style: TextStyles.sSmMedium.copyWith(
                  color: AppColors.gray700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}