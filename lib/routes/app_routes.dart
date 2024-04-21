import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/add_bills_billing_tab_screen/add_bills_billing_tab_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/hamburger_profile_one_screen/hamburger_profile_one_screen.dart';
import '../presentation/hamburger_profile_screen/hamburger_profile_screen.dart';
import '../presentation/profile_details_screen/profile_details_screen.dart';
import '../presentation/security_settings_screen/security_settings_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String hamburgerProfileScreen = '/hamburger_profile_screen';

  static const String hamburgerProfileOneScreen =
      '/hamburger_profile_one_screen';

  static const String profileDetailsScreen = '/profile_details_screen';

  static const String securitySettingsScreen = '/security_settings_screen';

  static const String addBillsBillingTabScreen =
      '/add_bills_billing_tab_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    hamburgerProfileScreen: (context) => HamburgerProfileScreen(),
    hamburgerProfileOneScreen: (context) => HamburgerProfileOneScreen(),
    profileDetailsScreen: (context) => ProfileDetailsScreen(),
    securitySettingsScreen: (context) => SecuritySettingsScreen(),
    addBillsBillingTabScreen: (context) => AddBillsBillingTabScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => HamburgerProfileScreen()
  };
}
