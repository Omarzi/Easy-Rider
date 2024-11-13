import 'package:fast_delivery/bottom_navigation_menu.dart';
import 'package:fast_delivery/core/utils/exports.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailOrNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 16,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Sign in ', style: TextStyles.tLgMedium),

          const SizedBox(height: 30),

          /// Email or Name
          CustomTextFormField(
            hintText: 'Email or Phone Number',
            controller: emailOrNameController,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            isPassword: true,
            hintText: 'Enter Your Password',
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 10),

          /// Forget Password
          TextButton(
            onPressed: () =>
                context.pushNamed(SendVerificationScreen.routeName),
            style: TextButton.styleFrom(
              foregroundColor: AppColors.primaryColor,
              padding: const EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppConstants.borderRadius),
              ),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forget password?',
                  style: TextStyles.sSmMedium.copyWith(
                    color: AppColors.errorColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),

          /// Sign Up Button
          CustomMainButton(
            widgetInCenter: Text(
              'Sign In',
              style: TextStyles.sLgMedium.copyWith(color: AppColors.whiteShade),
            ),
            bgButtonColor: AppColors.primaryColor700,
            onPressed: () => context.pushNamedAndRemoveUntil(
              BottomNavigationMenu.routeName,
              predicate: (route) => false,
              arguments: 0,
            ),
          ),
          const SizedBox(height: 20),
          const OrWidget(text: 'or'),
          const SizedBox(height: 20),

          /// Social Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSocialButton(
                icon: SvgPicture.asset(
                  Assets.svgGmailIcon,
                  fit: BoxFit.scaleDown,
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 15),
              CustomSocialButton(
                icon: SvgPicture.asset(
                  Assets.svgFacebookIcon,
                  fit: BoxFit.scaleDown,
                ),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 28),

          Center(
            child: TextRichWidget(
              text1: 'Don’t have an account? ',
              text2: 'Sign Up',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, SignupScreen.routeName);
                },
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
