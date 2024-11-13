import 'package:fast_delivery/core/utils/exports.dart';

class VerifyOtpBody extends StatelessWidget {
  const VerifyOtpBody({super.key, required this.screenName});

  final String screenName;

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();

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
            Text(
              screenName == 'signupScreen' ? 'Phone verification' : 'Forgot Password',
              style: TextStyles.tMdMedium,
            ),
            const SizedBox(height: 12),
            Text(
              screenName == 'signupScreen' ? 'Enter your OTP code' : 'Code has been send to ***** ***70',
              style: TextStyles.bLgRegular.copyWith(
                color: AppColors.gray400,
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: CustomOtpField(
                controller: phoneController,
              ),
            ),
            const SizedBox(height: 20),
            TextRichWidget(
              text1: 'Didn’t receive code? ',
              text2: 'Resend again',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // Navigator.pushNamed(context, LoginScreen.routeName);
                },
            ),

            const Spacer(),

            CustomMainButton(
              widgetInCenter: Text(
                'Verify',
                style:
                    TextStyles.sLgMedium.copyWith(color: AppColors.whiteShade),
              ),
              bgButtonColor: AppColors.primaryColor700,
              onPressed: () => context.pushNamed(SetPasswordScreen.routeName, arguments: 'verifyOtpScreen'),
            ),
          ],
        ),
      ),
    );
  }
}
