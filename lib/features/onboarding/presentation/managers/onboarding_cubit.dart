import 'package:fast_delivery/core/utils/exports.dart';
part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final PageController pageController = PageController();

  OnboardingCubit() : super(OnboardingInitial());

  void onPageChanged(int page) {
    double newPercentage = 0.35 * (page + 1);
    emit(OnboardingUpdated(page, newPercentage));
  }

  void nextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void goToNextPage(int currentPage, BuildContext context) {
    if (currentPage < 2) {
      nextPage();
    } else {
      Navigator.pushNamedAndRemoveUntil(
        context,
        ChoiceLoginOrSignupScreen.routeName,
            (route) => false,
      );
    }
  }
}
