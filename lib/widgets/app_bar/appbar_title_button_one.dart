import 'package:sahayak/core/app_export.dart';
import 'package:sahayak/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleButtonOne extends StatelessWidget {
  AppbarTitleButtonOne({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 41.v,
          width: 192.h,
          text: "lbl_create_nda".tr,
          leftIcon: Container(
            margin: EdgeInsets.only(right: 3.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 25.adaptSize,
              width: 25.adaptSize,
            ),
          ),
          buttonStyle: CustomButtonStyles.none,
          buttonTextStyle: theme.textTheme.headlineMedium!,
        ),
      ),
    );
  }
}
