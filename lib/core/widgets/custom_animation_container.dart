import 'package:fast_delivery/core/utils/exports.dart';

class CustomAnimationContainer extends StatelessWidget {
  const CustomAnimationContainer({
    super.key,
    required this.widget,
    required this.isSelected,
  });

  final Widget widget;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.primaryColor50,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: isSelected
              ? AppColors.primaryColor700
              : AppColors.primaryColor100,
          width: 1,
        ),
      ),
      child: widget,
    );
  }
}
