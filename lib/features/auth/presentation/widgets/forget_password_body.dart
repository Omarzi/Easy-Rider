import 'package:fast_delivery/core/utils/exports.dart';

class ForgetPasswordBody extends StatefulWidget {
  const ForgetPasswordBody({super.key});

  @override
  State<ForgetPasswordBody> createState() => _ForgetPasswordBodyState();
}

class _ForgetPasswordBodyState extends State<ForgetPasswordBody> {
  int selectedIndex = 0;

  void onItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 16,
        bottom: 16,
      ),
      child: Center(
        child: Column(
          children: [
            const Text(
              "Forgot Password",
              style: TextStyles.tMdMedium,
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Select which contact details should we use to reset your password",
                style: TextStyles.bLgRegular.copyWith(
                  color: AppColors.gray400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 36),
            RectangleCheckMethodToSendOTPWidget(
              image: Assets.svgMessageIcon,
              method: 'Via SMS',
              data: '***** ***70',
              isSelected: selectedIndex == 0,
              onTap: () => onItemSelected(0),
            ),
            const SizedBox(height: 16),
            RectangleCheckMethodToSendOTPWidget(
              image: Assets.svgEmailIcon,
              method: 'Via Email',
              data: '**** **** **** xyz@xyz.com',
              isSelected: selectedIndex == 1,
              onTap: () => onItemSelected(1),
            ),
            const Spacer(),
            /// Continue Button
            CustomMainButton(
              widgetInCenter: Text(
                'Continue',
                style: TextStyles.sLgMedium.copyWith(color: AppColors.whiteShade),
              ),
              bgButtonColor: AppColors.primaryColor700,
              onPressed: () => context.pushNamed(VerifyOtpScreen.routeName, arguments: 'forgetPasswordScreen'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

