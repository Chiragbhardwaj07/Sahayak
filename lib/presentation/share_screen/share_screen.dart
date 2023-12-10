import 'models/share_model.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/share_provider.dart';

class ShareScreen extends StatefulWidget {
  const ShareScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ShareScreenState createState() => ShareScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShareProvider(),
      child: ShareScreen(),
    );
  }
}

class ShareScreenState extends State<ShareScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 10.v),
              SizedBox(
                height: 469.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSharingContentPreview,
                      height: 469.v,
                      width: 393.h,
                      alignment: Alignment.center,
                    ),
                    _buildNameSection(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 41.v,
        width: 352.h,
        margin: EdgeInsets.only(top: 97.v),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 26.v,
                width: 352.h,
                margin: EdgeInsets.only(top: 3.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withOpacity(1),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 325.h,
                margin: EdgeInsets.only(left: 6.h),
                child: Text(
                  "msg_ankur_debnath_a".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeRoboto,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
