import 'package:fast_delivery/core/utils/exports.dart';

class RectangleCheckMethodToSendOTPWidget extends StatelessWidget {
  const RectangleCheckMethodToSendOTPWidget({
    super.key,
    required this.image,
    required this.method,
    required this.data,
    required this.isSelected,
    required this.onTap,
  });

  final String image, method, data;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomAnimationContainer(
        isSelected: isSelected,
        widget: Row(
          children: [
            SvgPicture.asset(image),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  method,
                  style: TextStyles.sSmMedium.copyWith(
                    color: AppColors.gray300,
                  ),
                ),
                Text(
                  data,
                  style: TextStyles.sLgMedium.copyWith(
                    color: AppColors.gray700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

