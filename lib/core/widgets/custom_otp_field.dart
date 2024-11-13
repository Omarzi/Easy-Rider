import 'package:fast_delivery/core/utils/exports.dart';

class CustomOtpField extends StatelessWidget {
  const CustomOtpField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      length: 5,
      appContext: context,
      keyboardType: TextInputType.number,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textStyle: TextStyles.tMdSemiBold.copyWith(
        color: AppColors.contentSecondary,
      ),
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        fieldHeight: 50,
        fieldWidth: 48,
        activeColor: AppColors.primaryColor400,
        inactiveColor: AppColors.gray200,
        activeBorderWidth: 1,
        inactiveBorderWidth: .71,
        activeFillColor: AppColors.fillOtpColor,
        inactiveFillColor: AppColors.whiteShade,
        selectedColor: AppColors.primaryColor400,
        selectedFillColor: AppColors.whiteShade,
        activeBoxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: 4,
            spreadRadius: 0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      onChanged: (value) {},
      onCompleted: (value) {},
      cursorColor: AppColors.primaryColor700,
      cursorHeight: 20,
      cursorWidth: 2,
      enableActiveFill: true,
      enablePinAutofill: true,
      controller: controller,
      autoFocus: true,
      animationDuration: const Duration(milliseconds: 300),
      animationCurve: Curves.easeInOut,
      showCursor: true,
      animationType: AnimationType.scale,
      backgroundColor: AppColors.whiteShade,
    );
  }
}
