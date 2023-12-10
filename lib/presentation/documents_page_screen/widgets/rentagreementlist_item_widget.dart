import '../models/rentagreementlist_item_model.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RentagreementlistItemWidget extends StatelessWidget {
  RentagreementlistItemWidget(
    this.rentagreementlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RentagreementlistItemModel rentagreementlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    padding: EdgeInsets.only(left: 13.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          rentagreementlistItemModelObj.agreementText!,
                          style:
                              CustomTextStyles.titleMediumMontserratBlack90001,
                        ),
                        SizedBox(height: 3.v),
                        Padding(
                          padding: EdgeInsets.only(right: 17.h),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text(
                                  rentagreementlistItemModelObj.agreementType!,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text(
                                  rentagreementlistItemModelObj.dateCreated!,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgTimeLeft,
          height: 40.adaptSize,
          width: 40.adaptSize,
          margin: EdgeInsets.only(left: 7.h),
        ),
      ],
    );
  }
}
