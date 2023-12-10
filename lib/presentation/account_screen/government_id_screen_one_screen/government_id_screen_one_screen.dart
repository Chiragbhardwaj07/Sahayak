import 'models/government_id_screen_one_model.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/government_id_screen_one_provider.dart';

class GovernmentIdScreenOneScreen extends StatefulWidget {
  const GovernmentIdScreenOneScreen({Key? key}) : super(key: key);

  @override
  GovernmentIdScreenOneScreenState createState() =>
      GovernmentIdScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => GovernmentIdScreenOneProvider(),
        child: GovernmentIdScreenOneScreen());
  }
}

class GovernmentIdScreenOneScreenState
    extends State<GovernmentIdScreenOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(18.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              // CustomElevatedButton(
              //     height: 45.v,
              //     text: "lbl_government_id".tr,
              //     margin: EdgeInsets.only(right: 95.h),
              //     leftIcon: Container(
              //         margin: EdgeInsets.only(right: 3.h),
              //         child: CustomImageView(
              //             imagePath: ImageConstant.imgVector,
              //             height: 20.adaptSize,
              //             width: 20.adaptSize)),
              //     buttonStyle: CustomButtonStyles.none,
              //     buttonTextStyle: CustomTextStyles.headlineMedium29,
              //     onPressed: () {
              //       onTapGovernmentID(context);
              //     },
              //     alignment: Alignment.centerLeft),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "lbl_government_id".tr,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(height: 60.v),
              SizedBox(
                  height: 155.v,
                  width: 298.h,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage71,
                        height: 155.v,
                        width: 298.h,
                        radius: BorderRadius.circular(4.h),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 85.h),
                                  child: Text("lbl".tr,
                                      style: CustomTextStyles
                                          .bodySmallHindBlack90001))),
                          SizedBox(height: 28.v),
                          SizedBox(
                              height: 14.v,
                              width: 120.h,
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: 14.v,
                                            width: 120.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.gray50))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text("lbl_ankur_debnath2".tr,
                                                style: CustomTextStyles
                                                    .labelMediumRubikBlack90001)))
                                  ])),
                          SizedBox(height: 3.v),
                          SizedBox(
                              height: 14.v,
                              width: 120.h,
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: 14.v,
                                            width: 120.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.gray50))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text("msg_dob_26_09_2003".tr,
                                                style: CustomTextStyles
                                                    .labelMediumRubikBlack90001)))
                                  ])),
                          SizedBox(height: 4.v),
                          SizedBox(
                              height: 15.v,
                              width: 120.h,
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            height: 14.v,
                                            width: 120.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.gray50))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text("msg_gender_male_m".tr,
                                                style: CustomTextStyles
                                                    .labelMediumRubikBlack90001))),
                                    // Align(
                                    //     alignment:
                                    //         Alignment.bottomCenter,
                                    //     child: Padding(
                                    //         padding: EdgeInsets.only(
                                    //             left: 8.h),
                                    //         child: Text(
                                    //             "X X X X   X X X X   X X X X",
                                    //             style: CustomTextStyles
                                    //                 .labelMediumRubikBlack90001)))
                                  ])),
                          SizedBox(height: 35.v),
                          Container(
                              width: 298.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 2.v),
                              decoration: AppDecoration.fillGreen.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL4),
                              child: Center(
                                child: Text("lbl_verified".tr,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ))
                        ]))
                  ])),
              SizedBox(height: 77.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text("lbl_authorizations".tr,
                          style: CustomTextStyles.titleMediumMedium))),
              SizedBox(height: 19.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.h),
                  child: _buildThirty(context,
                      dynamicText: "msg_generate_legal_documents".tr)),
              SizedBox(height: 21.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.h),
                  child: _buildThirty(context,
                      dynamicText: "msg_legal_expert_guidance".tr)),
              SizedBox(height: 23.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.h),
                  child: _buildThirty(context,
                      dynamicText: "msg_stamp_paper_delivery".tr)),
              SizedBox(height: 22.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.h),
                  child:
                      _buildThirty(context, dynamicText: "lbl_notary_sign".tr)),
              SizedBox(height: 24.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.h),
                  child: _buildThirty(context,
                      dynamicText: "msg_document_registration".tr)),
              SizedBox(height: 5.v)
            ])));
  }

  /// Common widget
  Widget _buildThirty(
    BuildContext context, {
    required String dynamicText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(dynamicText,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: appTheme.black90001))),
      CustomImageView(
          imagePath: ImageConstant.imgCheck,
          height: 24.v,
          width: 25.h,
          margin: EdgeInsets.only(left: 68.h))
    ]);
  }

  /// Navigates to the accountScreen when the action is triggered.
  onTapGovernmentID(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.accountScreen,
    );
  }
}
