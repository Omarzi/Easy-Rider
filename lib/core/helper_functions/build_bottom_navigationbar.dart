import 'package:fast_delivery/core/utils/exports.dart';

BottomNavigationBar buildBottomNavigationBar({
  required int currentIndex,
  required Function(int) setState,

}) {
  return BottomNavigationBar(
    elevation: 0,
    backgroundColor: AppColors.whiteShade,
    iconSize: 24,
    type: BottomNavigationBarType.fixed,
    currentIndex: currentIndex,
    onTap: setState,
    enableFeedback: false,
    selectedItemColor: AppColors.primaryColor,
    unselectedItemColor: AppColors.contentSecondary,
    selectedLabelStyle: TextStyles.bSmMedium
        .copyWith(color: AppColors.primaryColor),
    unselectedLabelStyle: TextStyles.bSmMedium
        .copyWith(color: AppColors.contentSecondary),
    showUnselectedLabels: true,
    items: bottomNavigationBarItems(currentIndex),
  );
}