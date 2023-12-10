import '../models/homepage_item_model.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomepageItemWidget extends StatelessWidget {
  HomepageItemWidget(
    this.homepageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomepageItemModel homepageItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 104.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: 118.v,
          width: 104.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              8.h,
            ),
            border: Border.all(
              color: appTheme.gray5005b,
              width: 1.h,
            ),
          ),
        ),
      ),
    );
  }
}
