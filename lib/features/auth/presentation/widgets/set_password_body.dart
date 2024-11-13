import 'package:fast_delivery/core/utils/exports.dart';

class SetPasswordBody extends StatelessWidget {
  const SetPasswordBody({super.key, required this.screenName});

  final String screenName;

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

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
              "Set password",
              style: TextStyles.tMdMedium,
            ),
            const SizedBox(height: 12),
            Text(
              "Set your password",
              style: TextStyles.bLgRegular.copyWith(
                color: AppColors.gray400,
              ),
            ),
            const SizedBox(height: 40),
            CustomTextFormField(
              isPassword: true,
              hintText: 'Enter Your Password',
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              isPassword: true,
              hintText: 'Confirm Password',
              controller: confirmPasswordController,
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Atleast 1 number or a special character',
                  style: TextStyles.sSmMedium.copyWith(
                    color: const Color(0xFFA6A6A6),
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomMainButton(
              widgetInCenter: Text(
                'Set password',
                style:
                    TextStyles.sLgMedium.copyWith(color: AppColors.whiteShade),
              ),
              bgButtonColor: AppColors.primaryColor700,

              /// TODO: Make Check When screenName == 'verifyOtpScreen' ? Go To Home : Go To CompleteYourProfileScreen
              onPressed: () => context.pushNamed(CompleteYourProfileScreen.routeName),
            ),
          ],
        ),
      ),
    );
  }
}