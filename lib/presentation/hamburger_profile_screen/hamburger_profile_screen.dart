import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class HamburgerProfileScreen extends StatelessWidget {
  const HamburgerProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 4.v),
            child: Container(
              margin: EdgeInsets.only(
                left: 35.h,
                right: 47.h,
                bottom: 5.v,
              ),
              decoration: AppDecoration.gradientLightBlueToCyan,
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3,
                    height: 88.adaptSize,
                    width: 88.adaptSize,
                    radius: BorderRadius.circular(
                      44.h,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "Eric Tan Jr.",
                    style: theme.textTheme.titleLarge,
                  ),
                  Text(
                    "0912345678",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 23.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Divider(
                      indent: 38.h,
                      endIndent: 19.h,
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "ACCOUNT SETTINGS",
                        style: CustomTextStyles.labelLargeExtraBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: _buildSecuritySettings(
                      context,
                      securityText: "Profile Details",
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: _buildSecuritySettings(
                      context,
                      securityText: "Security Settings",
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: _buildSecuritySettings(
                      context,
                      securityText: "Account Management",
                    ),
                  ),
                  SizedBox(height: 35.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "QUICK ACTIONS",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: _buildSecuritySettings(
                      context,
                      securityText: "Add Bills",
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: _buildSecuritySettings(
                      context,
                      securityText: "View Bills",
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: _buildSecuritySettings(
                      context,
                      securityText: "Pay Bills",
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: _buildSecuritySettings(
                      context,
                      securityText: "Transactions",
                    ),
                  ),
                  SizedBox(height: 35.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "PRIVACY",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: _buildTermsAndConditions(
                      context,
                      termsAndConditionsText: "Privacy Policy",
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: _buildTermsAndConditions(
                      context,
                      termsAndConditionsText: "Terms and Conditions",
                    ),
                  ),
                  SizedBox(height: 37.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIconGenericSettings,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            bottom: 6.v,
                          ),
                          child: Text(
                            "Settings",
                            style: CustomTextStyles.bodyMediumRegular,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUser,
                            height: 16.v,
                            width: 13.h,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Text(
                              "Sign Out",
                              style: CustomTextStyles.bodyMediumRedA200,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 82.v,
      leadingWidth: 66.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgAsset21,
        margin: EdgeInsets.only(
          left: 33.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconGenericClose,
          margin: EdgeInsets.fromLTRB(25.h, 19.v, 25.h, 12.v),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildSecuritySettings(
    BuildContext context, {
    required String securityText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          securityText,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 10.v,
          width: 6.h,
          margin: EdgeInsets.only(
            top: 5.v,
            bottom: 4.v,
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildTermsAndConditions(
    BuildContext context, {
    required String termsAndConditionsText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          termsAndConditionsText,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 10.v,
          width: 6.h,
          margin: EdgeInsets.only(
            top: 6.v,
            bottom: 3.v,
          ),
        )
      ],
    );
  }
}
