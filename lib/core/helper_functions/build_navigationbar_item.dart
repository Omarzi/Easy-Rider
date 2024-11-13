import 'package:fast_delivery/core/utils/exports.dart';

BottomNavigationBarItem buildNavigationBarItem(
  IconData icon,
  String label,
  int index,
  int currentIndex,
  Color selectedItemColor,
  Color unselectedItemColor,
) {
  return BottomNavigationBarItem(
    icon: AspectRatio(
      aspectRatio: 57.5 / 28,
      child: Icon(
        icon,
        color: currentIndex == index ? selectedItemColor : unselectedItemColor,
      ),
    ),
    label: label,
  );
}
