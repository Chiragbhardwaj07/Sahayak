import 'package:sahayak/core/utils/image_constant.dart';
import 'package:sahayak/core/utils/size_utils.dart';
import 'package:sahayak/theme/custom_text_style.dart';
import 'package:sahayak/theme/theme_helper.dart';
import 'package:sahayak/widgets/custom_image_view.dart';

import '../models/rentagreementlist_item_model.dart';
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
    return ListTile(
      leading: CustomImageView(
        imagePath: ImageConstant.imgRectangle1148x48,
        height: 32.adaptSize,
        width: 32.adaptSize,
        margin: EdgeInsets.only(
          top: 3.v,
          bottom: 2.v,
        ),
      ),
      title: Text(
        rentagreementlistItemModelObj.agreementText!,
        style: CustomTextStyles.titleMediumMontserratBlack90001,
      ),
      subtitle: Text(
        rentagreementlistItemModelObj.agreementType!,
        style: theme.textTheme.labelMedium,
      ),
      trailing: CustomImageView(
        imagePath: ImageConstant.imgTimeLeft,
        height: 40.adaptSize,
        width: 40.adaptSize,
        margin: EdgeInsets.only(left: 7.h),
      ),
    );
  }
}
