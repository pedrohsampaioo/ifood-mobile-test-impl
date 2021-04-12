part of 'app_theme.dart';

abstract class AppTypography {
  static TextStyle get heading1 => const TextStyle(
        letterSpacing: -0.4,
        fontWeight: FontWeight.bold,
        fontSize: 40,
      );
  static TextStyle get heading2 => heading1.copyWith(
        letterSpacing: -0.36,
        fontSize: 36,
      );
  static TextStyle get heading3 => heading1.copyWith(
        letterSpacing: -0.32,
        fontSize: 32,
      );
  static TextStyle get heading4 => heading1.copyWith(
        letterSpacing: -0.28,
        fontSize: 28,
      );
  static TextStyle get heading5 => heading1.copyWith(
        letterSpacing: -0.24,
        fontSize: 24,
      );
  static TextStyle get headingBold6 => heading1.copyWith(
        letterSpacing: -0.20,
        fontSize: 20,
      );
  static TextStyle get headingSemiBold6 => headingBold6.copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle get bodyLargeRegular => const TextStyle(fontSize: 18);
  static TextStyle get bodyLargeMedium => bodyLargeRegular.copyWith(
        letterSpacing: -0.18,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get bodyLargeSemiBold => bodyLargeMedium.copyWith(
        fontWeight: FontWeight.w600,
      );
  static TextStyle get bodyLargeBold => bodyLargeMedium.copyWith(
        fontWeight: FontWeight.bold,
      );

  static TextStyle get bodyRegular => const TextStyle(fontSize: 16);
  static TextStyle get bodyMedium => bodyRegular.copyWith(
        letterSpacing: -0.16,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get bodySemiBold => bodyMedium.copyWith(
        fontWeight: FontWeight.w600,
      );
  static TextStyle get bodyBold => bodyMedium.copyWith(
        fontWeight: FontWeight.bold,
      );

  static TextStyle get bodySmallRegular => const TextStyle(fontSize: 14);
  static TextStyle get bodySmallMedium => bodySmallRegular.copyWith(
        letterSpacing: -0.14,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get bodySmallSemiBold => bodySmallMedium.copyWith(
        fontWeight: FontWeight.w600,
      );
  static TextStyle get bodySmallBold => bodySmallMedium.copyWith(
        fontWeight: FontWeight.bold,
      );

  static TextStyle get caption => const TextStyle(fontSize: 12);

  static TextStyle get tagline => const TextStyle(fontSize: 10);
}
