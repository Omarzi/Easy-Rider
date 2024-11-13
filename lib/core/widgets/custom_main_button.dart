import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    super.key,
    required this.widgetInCenter,
    required this.bgButtonColor,
    this.borderColor,
    this.border,
    this.borderRadius = 8,
    this.onPressed,
  });

  final double? borderRadius;
  final Widget widgetInCenter;
  final Color bgButtonColor;
  final Color? borderColor;
  final Border? border;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          side: borderColor != null
              ? BorderSide(color: borderColor!, width: 1)
              : BorderSide.none,
        ),
        backgroundColor: bgButtonColor,
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Center(
          child: widgetInCenter,
        ),
      ),
    );
  }
}
