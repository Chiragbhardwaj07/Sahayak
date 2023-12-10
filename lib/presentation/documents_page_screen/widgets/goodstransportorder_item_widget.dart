import '../models/goodstransportorder_item_model.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GoodstransportorderItemWidget extends StatelessWidget {
  GoodstransportorderItemWidget(
    this.goodstransportorderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GoodstransportorderItemModel goodstransportorderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 63.v,
        width: 359.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 63.v,
                width: 359.h,
                decoration: BoxDecoration(
                  color: appTheme.red600,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(10.h),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 11.v,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle1148x48,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      margin: EdgeInsets.only(
                        top: 3.v,
                        bottom: 1.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 13.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            goodstransportorderItemModelObj.text!,
                            style: CustomTextStyles
                                .titleMediumMontserratPrimaryContainer,
                          ),
                          SizedBox(height: 3.v),
                          SizedBox(
                            width: 227.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text(
                                    goodstransportorderItemModelObj.text1!,
                                    style: CustomTextStyles.labelMediumGray5002,
                                  ),
                                ),
                                Text(
                                  goodstransportorderItemModelObj.text2!,
                                  style: CustomTextStyles.labelMediumGray5002,
                                ),
                              ],
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
    );
  }
}
