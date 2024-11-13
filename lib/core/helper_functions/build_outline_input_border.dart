import 'package:flutter/material.dart';

OutlineInputBorder buildOutlineInputBorder({
  required double radius,
  required BorderSide borderSide,
}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(radius),
    borderSide: borderSide,
  );
}