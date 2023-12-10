import 'dart:ui';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlue => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
      );
  static ButtonStyle get fillLightBlue => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightBlue900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(
              5.h,
            ),
          ),
        ),
      );
  static ButtonStyle get fillLightGreen => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightGreen800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlackTL5 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.black90001,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              5.h,
            ),
            topRight: Radius.circular(
              4.h,
            ),
            bottomLeft: Radius.circular(
              5.h,
            ),
            bottomRight: Radius.circular(
              5.h,
            ),
          ),
        ),
      );
  static ButtonStyle get outlineBlackTL51 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightGreen800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              5.h,
            ),
            topRight: Radius.circular(
              4.h,
            ),
            bottomLeft: Radius.circular(
              5.h,
            ),
            bottomRight: Radius.circular(
              5.h,
            ),
          ),
        ),
        shadowColor: appTheme.black90001.withOpacity(0.25),
        elevation: 4,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
