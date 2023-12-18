import 'package:flutter/material.dart';
import 'package:sahayak/core/utils/size_utils.dart';
import 'package:sahayak/localization/app_localization.dart';
import 'package:sahayak/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarTitleSearchview extends StatelessWidget {
  AppbarTitleSearchview({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 285.h,
        controller: controller,
        hintText: "msg_search_for_templates".tr,
      ),
    );
  }
}
