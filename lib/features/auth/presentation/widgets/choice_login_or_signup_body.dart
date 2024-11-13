import 'package:fast_delivery/core/utils/exports.dart';

class ChoiceLoginOrSignupBody extends StatefulWidget {
  const ChoiceLoginOrSignupBody({super.key});

  @override
  State<ChoiceLoginOrSignupBody> createState() =>
      _ChoiceLoginOrSignupBodyState();
}

class _ChoiceLoginOrSignupBodyState extends State<ChoiceLoginOrSignupBody> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      openShowDialogToCheckLocation();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OnboardingContentWidget(
          imagePath: Assets.svgChoiceLoginOrRegisterBodyImage,
          title: 'Welcome',
          description: 'Have a better sharing experience',
          padding: 18,
          spaceBetweenImageAndText: 29,
        ),

        const Spacer(),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              CustomMainButton(
                widgetInCenter: Text(
                  'Create an account',
                  style: TextStyles.sLgMedium.copyWith(
                    color: AppColors.whiteShade,
                  ),
                ),
                bgButtonColor: AppColors.primaryColor700,
                onPressed: () => context.pushNamed(SignupScreen.routeName),
              ),

              const SizedBox(height: 20),

              CustomMainButton(
                widgetInCenter: Text(
                  'Log In',
                  style: TextStyles.sLgMedium.copyWith(
                    color: AppColors.primaryColor700,
                  ),
                ),
                bgButtonColor: Colors.transparent,
                borderColor: AppColors.primaryColor700,
                onPressed: () => context.pushNamed(LoginScreen.routeName),
              ),
            ],
          ),
        ),

        const SizedBox(height: 22),
      ],
    );
  }

  void openShowDialogToCheckLocation() {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CustomDialogCheckLocation(),
      ),
    );
  }
}