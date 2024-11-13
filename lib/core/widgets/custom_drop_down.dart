import 'package:fast_delivery/core/helper_functions/build_outline_input_border.dart';
import 'package:fast_delivery/core/utils/app_colors.dart';
import 'package:fast_delivery/core/utils/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String hintText;
  final List<String> items;
  final ValueChanged<String?>? onChanged;
  final String? selectedItem;

  const CustomDropdown({
    super.key,
    required this.hintText,
    required this.items,
    this.onChanged,
    this.selectedItem,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedItem,
      onChanged: onChanged,
      items: items.map((item) {
        return DropdownMenuItem(
          value: item,
          child: Text(
            item,
            style: TextStyles.bLgMedium.copyWith(
              color: const Color(0xFF262626),
            ),
          ),
        );
      }).toList(),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyles.sLgMedium.copyWith(
          color: AppColors.gray200,
          height: 1.8,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: buildOutlineInputBorder(
          radius: 12,
          borderSide: BorderSide(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
        focusedBorder: buildOutlineInputBorder(
          radius: 8,
          borderSide: const BorderSide(
            color: AppColors.primaryColor700,
            width: 1,
          ),
        ),
        errorBorder: buildOutlineInputBorder(
          radius: 8,
          borderSide: const BorderSide(
            color: AppColors.errorColor,
            width: 1,
          ),
        ),
        focusedErrorBorder: buildOutlineInputBorder(
          radius: 8,
          borderSide: const BorderSide(
            color: AppColors.errorColor,
            width: 1,
          ),
        ),
      ),
      icon: const Icon(
        CupertinoIcons.arrow_down_right_square,
        color: Colors.grey, // Arrow icon color
      ),
      dropdownColor: AppColors.whiteShade,
      borderRadius: BorderRadius.circular(8),
      isExpanded: true,
      style: TextStyles.bLgMedium.copyWith(
        color: const Color(0xFF262626),
      ),
      iconSize: 24,
      iconEnabledColor: AppColors.primaryColor700,
      iconDisabledColor: AppColors.primaryColor700,
      isDense: true,
      validator: (value) => value == null ? 'Please select an item' : null,
    );
  }
}
