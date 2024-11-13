import 'package:fast_delivery/core/utils/exports.dart';

class WalletBody extends StatelessWidget {
  const WalletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.padding16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AddMoneyButtonWidget(
                  buttonName: 'Add Money',
                  onPressed: () => context.pushNamed(AddAmountScreen.routeName),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BalanceAndExpendContainerWidget(
                  number: '\$500',
                  description: 'Available Balance',
                ),
                SizedBox(width: 30),
                BalanceAndExpendContainerWidget(
                  number: '\$200',
                  description: 'Total Expend',
                )
              ],
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transactions',
                    style: TextStyles.sLgSemiBold.copyWith(
                      color: AppColors.contentSecondary,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyles.bSmMedium.copyWith(
                      color: AppColors.primaryColor800,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return TransactionWidget(
                  transaction: AppConstants.transactionList[index],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 16);
              },
              itemCount: AppConstants.transactionList.length,
            )
          ],
        ),
      ),
    );
  }
}
