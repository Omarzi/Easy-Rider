import 'package:fast_delivery/core/helper_functions/build_outline_input_border.dart';
import 'package:fast_delivery/core/utils/app_colors.dart';
import 'package:fast_delivery/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl_mobile_field/country_picker_dialog.dart';
import 'package:intl_mobile_field/intl_mobile_field.dart';

class CustomMobileNumberField extends StatelessWidget {
  final TextEditingController controller;

  const CustomMobileNumberField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return IntlMobileField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Your mobile number',
        hintStyle: TextStyles.sLgMedium.copyWith(color: AppColors.gray200),
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: buildOutlineInputBorder(
          radius: 8,
          borderSide: const BorderSide(
            color: AppColors.gray200,
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
      pickerDialogStyle: PickerDialogStyle(
        backgroundColor: AppColors.whiteShade,
        searchFieldTextStyle: TextStyles.sLgMedium.copyWith(
          color: AppColors.gray200,
        ),
        countryNameStyle: TextStyles.bLgMedium.copyWith(
          color: const Color(0xFF262626),
        ),
        countryCodeStyle: TextStyles.bSmMedium.copyWith(
          color: const Color(0xFF262626),
        ),
        searchFieldInputDecoration: const InputDecoration(
          filled: true,
          fillColor: AppColors.whiteShade,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          suffixIcon: Icon(Iconsax.search_normal),
        ),
      ),
      disableLengthCounter: true,
      initialCountryCode: 'EG',
      languageCode: "en",
      onChanged: (phone) {
        // Handle phone number change if needed
      },
    );
  }
}
