import 'package:sahayak/core/app_export.dart';
import 'package:sahayak/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleSearchviewOne extends StatelessWidget {
  AppbarTitleSearchviewOne(
      {Key? key, this.hintText, this.controller, this.margin, this.focusnode})
      : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;
  FocusNode? focusnode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 285.h,
        controller: controller,
        hintText: "msg_search_for_templates".tr,
        borderDecoration: SearchViewStyleHelper.fillGrayTL10,
        fillColor: appTheme.gray300,
        focusNode: focusnode,
      ),
    );
  }
}
