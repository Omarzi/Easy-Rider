import 'package:fast_delivery/core/utils/exports.dart';
import 'package:fast_delivery/features/auth/presentation/screens/forget_password_screen.dart';

class SendVerificationBody extends StatelessWidget {
  const SendVerificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailOrNameController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 16,
        bottom: 16,
      ),
      child: Column(
        children: [
          const Text('Verification email or phone number', style: TextStyles.tMdMedium),
          const SizedBox(height: 40),

          /// Email or Name
          CustomTextFormField(
            hintText: 'Email or Phone Number',
            controller: emailOrNameController,
            keyboardType: TextInputType.emailAddress,
          ),

          const Spacer(),

          /// Send OTP Button
          CustomMainButton(
            widgetInCenter: Text(
              'Send OTP',
              style: TextStyles.sLgMedium.copyWith(color: AppColors.whiteShade),
            ),
            bgButtonColor: AppColors.primaryColor700,
            onPressed: () => context.pushNamed(ForgetPasswordScreen.routeName),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
