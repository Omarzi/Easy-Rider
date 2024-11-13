import 'package:fast_delivery/core/utils/exports.dart';
import 'package:flutter/cupertino.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
          final onboardingCubit = context.read<OnboardingCubit>();

          return Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 8,
                    child: PageView.builder(
                      controller: onboardingCubit.pageController,
                      onPageChanged: onboardingCubit.onPageChanged,
                      itemCount: AppConstants.onboardingContent.length,
                      itemBuilder: (context, index) {
                        return AppConstants.onboardingContent[index];
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: CupertinoButton(
                        onPressed: () {
                          final currentPage = state is OnboardingUpdated
                              ? state.currentPage
                              : 0;
                          onboardingCubit.goToNextPage(currentPage, context);
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 86,
                              height: 86,
                              child: CircularProgressIndicator(
                                value: state is OnboardingUpdated
                                    ? state.percentage
                                    : 0.35,
                                backgroundColor: AppColors.primaryColor100,
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                  AppColors.primaryColor,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: AppColors.primaryColor,
                              child: GestureDetector(
                                child: state is OnboardingUpdated && state.currentPage == 2
                                    ? Text(
                                  'Go',
                                  style: TextStyles.hLgMedium.copyWith(
                                    color: AppColors.contentTertiary,
                                  ),
                                )
                                    : const Icon(
                                  Icons.arrow_forward,
                                  color: AppColors.contentTertiary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              /// Skip Button
              const SkipButtonWidget(),
            ],
          );
        },
      ),
    );
  }
}
