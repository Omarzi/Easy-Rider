import 'package:fast_delivery/core/utils/exports.dart';

class TextRichWidget extends StatelessWidget {
  const TextRichWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.recognizer,
  });

  final String text1;
  final String text2;

  final GestureRecognizer recognizer;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: TextStyles.bLgMedium.copyWith(
              color: AppColors.gray700,
            ),
          ),
          TextSpan(
            recognizer: recognizer,
            text: text2,
            style: TextStyles.bLgMedium.copyWith(
              color: AppColors.primaryColor700,
            ),
          )
        ],
      ),
    );
  }
}
