import 'package:fast_delivery/core/utils/exports.dart';

class AddAmountBody extends StatefulWidget {
  const AddAmountBody({super.key});

  @override
  State<AddAmountBody> createState() => _AddAmountBodyState();
}

class _AddAmountBodyState extends State<AddAmountBody> {
  int selectedMethodIndex = 0;
  TextEditingController amountController = TextEditingController();

  void selectPaymentMethod(int index) {
    setState(() {
      selectedMethodIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppConstants.padding16),
      child: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextFormField(
                    hintText: 'Enter Amount',
                    controller: amountController,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Add payment Method',
                        style: TextStyles.bMdMedium.copyWith(
                          color: const Color(0xFF304FFE),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Select Payment Method',
                    style: TextStyles.sLgSemiBold.copyWith(
                      color: AppColors.contentSecondary,
                    ),
                  ),
                  const SizedBox(height: 22),
                  buildTransactionListView(),
                ],
              ),
            ),
          ),

          /// Confirm Button
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: CustomMainButton(
              widgetInCenter: Text(
                'Confirm',
                style:
                    TextStyles.sLgMedium.copyWith(color: AppColors.whiteShade),
              ),
              bgButtonColor: AppColors.primaryColor700,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  ListView buildTransactionListView() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: AppConstants.paymentMethods.length,
      itemBuilder: (context, index) {
        final method = AppConstants.paymentMethods[index];

        return ContainerPaymentMethod(
          icon: method['icon'] as Widget,
          title: method['title'] as String,
          subtitle: method['subtitle'] as String,
          isSelected: selectedMethodIndex == index,
          onTap: () => selectPaymentMethod(index),
        );
      },
    );
  }
}