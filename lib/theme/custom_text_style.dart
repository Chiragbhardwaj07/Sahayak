import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray50001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyLargeMontserrat =>
      theme.textTheme.bodyLarge!.montserrat.copyWith(
        fontSize: 17.fSize,
      );
  static get bodyLargePoppinsBlack90001 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.black90001.withOpacity(0.8),
      );
  static get bodyLargePoppinsBlack9000116 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.black90001.withOpacity(0.5),
        fontSize: 16.fSize,
      );
  static get bodyLargePoppinsBlack9000116_1 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.black90001.withOpacity(0.7),
        fontSize: 16.fSize,
      );
  static get bodyLargePoppinsBlack9000116_2 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.black90001.withOpacity(0.6),
        fontSize: 16.fSize,
      );
  static get bodyLargeRoboto => theme.textTheme.bodyLarge!.roboto.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumRubikBlack90001 =>
      theme.textTheme.bodyMedium!.rubik.copyWith(
        color: appTheme.black90001,
        fontSize: 13.fSize,
      );
  static get bodyMediumRubikBlack9000113 =>
      theme.textTheme.bodyMedium!.rubik.copyWith(
        color: appTheme.black90001,
        fontSize: 13.fSize,
      );
  static get bodySmallHindBlack90001 =>
      theme.textTheme.bodySmall!.hind.copyWith(
        color: appTheme.black90001,
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineMedium29 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 29.fSize,
      );
  static get headlineMediumBlack90001 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.64),
        fontSize: 28.fSize,
        fontWeight: FontWeight.w500,
      );
  // Label text style
  static get labelLargeBlack90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 13.fSize,
      );
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray50002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50002,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray50003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50003,
        fontSize: 13.fSize,
      );
  static get labelLargeGray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get labelLargePoppinsGray50003 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray50003,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsPrimary =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimaryContainer13 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 13.fSize,
      );
  static get labelLargePrimaryContainer13_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 13.fSize,
      );
  static get labelLargeRubikPrimaryContainer =>
      theme.textTheme.labelLarge!.rubik.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get labelLargeSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 13.fSize,
      );
  static get labelMediumGray5002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray5002,
      );
  static get labelMediumPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelMediumPrimaryContainer_1 =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get labelMediumRubikBlack90001 =>
      theme.textTheme.labelMedium!.rubik.copyWith(
        color: appTheme.black90001,
        fontSize: 11.fSize,
      );
  // Title text style
  static get titleLargePoppinsPrimaryContainer =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.9),
        fontSize: 23.fSize,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMontserratBlack90001 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumMontserratPrimaryContainer =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleMediumMontserratSecondaryContainer =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleMediumPoppinsBlack90001 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black90001.withOpacity(0.8),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlack90001Medium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlueA400 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueA400,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsErrorContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 19.fSize,
      );
  static get titleMediumPoppinsPrimaryContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.9),
      );
  static get titleMediumPoppinsPrimaryContainer18 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.9),
        fontSize: 18.fSize,
      );
  static get titleMediumPoppinsSecondaryContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleSmallBlack90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
      );
  static get titleSmallManropeBlack900 =>
      theme.textTheme.titleSmall!.manrope.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get titleSmallPoppinsBlue80001 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.blue80001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsGray700 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsPrimaryContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.9),
        fontSize: 15.fSize,
      );
  static get titleSmallPoppinsRed300 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.red300,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRubik => theme.textTheme.titleSmall!.rubik.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmallRubikBlack90001 =>
      theme.textTheme.titleSmall!.rubik.copyWith(
        color: appTheme.black90001,
        fontSize: 15.fSize,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get hind {
    return copyWith(
      fontFamily: 'Hind',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
