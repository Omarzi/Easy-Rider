part of 'onboarding_cubit.dart';

@immutable
sealed class OnboardingState {}

final class OnboardingInitial extends OnboardingState {}

class OnboardingUpdated extends OnboardingState {
  final int currentPage;
  final double percentage;

  OnboardingUpdated(this.currentPage, this.percentage);
}