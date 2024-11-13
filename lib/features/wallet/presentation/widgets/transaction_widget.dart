import 'package:fast_delivery/core/utils/exports.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    super.key,
    required this.transaction,
  });

  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 11,
        top: 12,
        bottom: 12,
        right: 17,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primaryColor700,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: transaction.type == 'income' ?  AppColors.errorRedColor100 : AppColors.successGreenColor100,
            child: SvgPicture.asset(transaction.type == 'income' ? Assets.svgUpIcon : Assets.svgDownIcon),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.title,
                  style: TextStyles.bMdMedium.copyWith(
                    color: AppColors.blackShade,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  transaction.date,
                  style: TextStyles.bSmRegular.copyWith(
                    color: AppColors.gray700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 5),
          Text(
            transaction.amount,
            style: TextStyles.lMdMedium.copyWith(
              color: AppColors.blackShade,
            ),
          ),
        ],
      ),
    );
  }
}