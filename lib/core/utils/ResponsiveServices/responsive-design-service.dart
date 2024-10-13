import 'package:flutter/material.dart';

class ResponsiveDesignService {
  static ResponsiveDesignService? _instance;
  late MediaQueryData _mediaQueryData;

  // Private constructor
  ResponsiveDesignService._();

  // Singleton instance
  static ResponsiveDesignService getInstance() {
    _instance ??= ResponsiveDesignService._();
    return _instance!;
  }

  // Initialize with BuildContext
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
  }

  // Get screen width
  double get screenWidth => _mediaQueryData.size.width;

  // Get screen height
  double get screenHeight => _mediaQueryData.size.height;

  // Get screen orientation
  Orientation get orientation => _mediaQueryData.orientation;

  // Check if device is mobile
  bool get isMobile => screenWidth < 600;

  // Check if device is tablet
  bool get isTablet => screenWidth >= 600 && screenWidth < 1200;

  // Check if device is desktop
  bool get isDesktop => screenWidth >= 1200;

  // Get responsive value based on screen size
  T getResponsiveValue<T>({
    required T mobile,
    T? tablet,
    required T desktop,
  }) {
    if (isMobile) return mobile;
    if (isTablet) return tablet ?? desktop;
    return desktop;
  }

  // Get responsive padding
  EdgeInsets getResponsivePadding({
    required EdgeInsets mobile,
    EdgeInsets? tablet,
    required EdgeInsets desktop,
  }) {
    return getResponsiveValue(
      mobile: mobile,
      tablet: tablet,
      desktop: desktop,
    );
  }

  // Get responsive font size
  double getResponsiveFontSize({
    required double mobile,
    double? tablet,
    required double desktop,
  }) {
    return getResponsiveValue(
      mobile: mobile,
      tablet: tablet,
      desktop: desktop,
    );
  }
}
