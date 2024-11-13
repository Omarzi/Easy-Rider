import 'package:fast_delivery/core/utils/app_colors.dart';
import 'package:fast_delivery/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 24,
      child: Row(
        children: [
          Expanded(child: Container(height: 1, margin: const EdgeInsets.only(left: 10, right: 16), color: AppColors.contentDisabled)),
          Text(text, style: TextStyles.bLgMedium.copyWith(color: AppColors.contentDisabled)),
          Expanded(child: Container(height: 1, margin: const EdgeInsets.only(left: 10, right: 16), color: AppColors.contentDisabled)),
        ],
      ),
    );
  }
}
