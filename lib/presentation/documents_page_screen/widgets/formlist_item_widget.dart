import '../models/formlist_item_model.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormlistItemWidget extends StatelessWidget {
  FormlistItemWidget(
    this.formlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FormlistItemModel formlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 3.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1148x48,
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 2.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                bottom: 1.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    formlistItemModelObj.gapAffidavitText!,
                    style: CustomTextStyles.titleMediumMontserratBlack90001,
                  ),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.only(right: 14.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          formlistItemModelObj.typeAffidavitText!,
                          style: theme.textTheme.labelMedium,
                        ),
                        Text(
                          formlistItemModelObj.dateCreatedText!,
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheck,
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.only(
              left: 11.h,
              top: 1.v,
              bottom: 2.v,
            ),
          ),
        ],
      ),
    );
  }
}
