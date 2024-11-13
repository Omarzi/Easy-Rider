import 'package:fast_delivery/core/utils/exports.dart';

List<BottomNavigationBarItem> bottomNavigationBarItems(int currentIndex) {
  return [
    BottomNavigationBarItem(
      icon: AspectRatio(aspectRatio: 57.5 / 28, child: Icon(Iconsax.home, color: currentIndex == 0 ? AppColors.primaryColor : AppColors.contentSecondary)),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: AspectRatio(aspectRatio: 57.5 / 28, child: Icon(Iconsax.heart, color: currentIndex == 1 ? AppColors.primaryColor : AppColors.contentSecondary)),
      label: 'Favourite',
    ),
    BottomNavigationBarItem(
      icon: AspectRatio(aspectRatio: 57.5 / 28, child: Icon(Iconsax.wallet, color: currentIndex == 2 ? AppColors.primaryColor : AppColors.contentSecondary)),
      label: 'Wallet',
    ),
    BottomNavigationBarItem(
      icon: AspectRatio(aspectRatio: 57.5 / 28, child: Icon(Iconsax.gift, color: currentIndex == 3 ? AppColors.primaryColor : AppColors.contentSecondary)),
      label: 'Offer',
    ),
    BottomNavigationBarItem(
      icon: AspectRatio(aspectRatio: 57.5 / 28, child: Icon(Iconsax.user, color: currentIndex == 4 ? AppColors.primaryColor : AppColors.contentSecondary)),
      label: 'Profile',
    ),
  ];
}