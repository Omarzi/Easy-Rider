import 'package:fast_delivery/core/helper_functions/build_outline_input_border.dart';
import 'package:fast_delivery/core/utils/app_colors.dart';
import 'package:fast_delivery/core/utils/app_constants.dart';
import 'package:fast_delivery/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isPassword;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    this.isPassword = false,
  });

  @override
  CustomTextFormFieldState createState() => CustomTextFormFieldState();
}

class CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscureText = true;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void toggleObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  void _handleFocusChange() {
    setState(() {}); // Triggers rebuild to update icon color based on focus state
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword ? obscureText : false,
      style: TextStyles.bLgMedium.copyWith(color: const Color(0xFF262626)),
      focusNode: _focusNode,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyles.sLgMedium.copyWith(color: AppColors.gray200),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        filled: true,
        fillColor: AppColors.whiteShade,
        enabledBorder: buildOutlineInputBorder(
          radius: 12,
          borderSide: BorderSide(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
        focusedBorder: buildOutlineInputBorder(
          radius: AppConstants.borderRadius,
          borderSide: const BorderSide(
            color: AppColors.primaryColor700,
            width: 1,
          ),
        ),
        errorBorder: buildOutlineInputBorder(
          radius: AppConstants.borderRadius,
          borderSide: const BorderSide(
            color: AppColors.errorColor,
            width: 1,
          ),
        ),
        focusedErrorBorder: buildOutlineInputBorder(
          radius: AppConstants.borderRadius,
          borderSide: const BorderSide(
            color: AppColors.errorColor,
            width: 1,
          ),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
          icon: Icon(
            obscureText ? Iconsax.eye_slash : Iconsax.eye,
            color: _focusNode.hasFocus
                ? AppColors.primaryColor700
                : AppColors.gray200,
          ),
          onPressed: toggleObscureText,
        )
            : null,
      ),
    );
  }
}
