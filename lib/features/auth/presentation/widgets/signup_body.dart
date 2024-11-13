import 'package:fast_delivery/core/utils/exports.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Text('Sign up', style: TextStyles.tMdMedium),
            const SizedBox(height: 24),
      
            /// Name
            CustomTextFormField(
              hintText: 'Name',
              controller: nameController,
              keyboardType: TextInputType.name,
            ),
            const SizedBox(height: 20),
      
            /// Email
            CustomTextFormField(
              hintText: 'Email',
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
      
            /// Phone Number
            CustomMobileNumberField(
              controller: phoneController,
            ),
            const SizedBox(height: 20),
      
            /// Gender
            CustomDropdown(
              hintText: 'Gender',
              items: const ['Male', 'Female'],
              onChanged: (value) {
                // Handle selection change
              },
            ),
            const SizedBox(height: 20),
      
            /// Sign Up Button
            CustomMainButton(
              widgetInCenter: Text(
                'Sign Up',
                style: TextStyles.sLgMedium.copyWith(color: AppColors.whiteShade),
              ),
              bgButtonColor: AppColors.primaryColor700,
              onPressed: () => context.pushNamed(VerifyOtpScreen.routeName, arguments: 'signupScreen'),
            ),
            const SizedBox(height: 17),
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
      
            const SizedBox(height: 53),
      
            Center(
              child: TextRichWidget(
                text1: 'Already have an account? ',
                text2: 'Sign in',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}