import 'package:fast_delivery/core/utils/exports.dart';

class OnboardingContentWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final bool isLastPage;
  final double? padding;
  final double spaceBetweenImageAndText;
  final double? spaceBetweenTopAndBottom;
  final int? index;

  const OnboardingContentWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    this.padding,
    this.index,
    required this.spaceBetweenImageAndText,
    this.spaceBetweenTopAndBottom = 70,
    this.isLastPage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: spaceBetweenTopAndBottom),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: padding == null ? index == 0 ? 10 : 14 : padding!),
          child: SvgPicture.asset(imagePath),
        ),
        // SizedBox(height: index == 2 ? 52 : index == 1 ? 40 : index == 0 ? 43 : 29),
        SizedBox(height: spaceBetweenImageAndText),
        Text(
          title,
          style: TextStyles.tMdMedium,
        ),
        const SizedBox(height: 12),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyles.sSmMedium.copyWith(
            color: AppColors.onBoardingSubTitleColor,
          ),
        ),
      ],
    );
  }
}