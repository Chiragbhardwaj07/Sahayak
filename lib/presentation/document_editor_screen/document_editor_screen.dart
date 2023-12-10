import 'models/document_editor_model.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_title_button_one.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:chirag_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:chirag_s_application/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/document_editor_provider.dart';

class DocumentEditorScreen extends StatefulWidget {
  const DocumentEditorScreen({Key? key}) : super(key: key);

  @override
  DocumentEditorScreenState createState() => DocumentEditorScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DocumentEditorProvider(),
        child: DocumentEditorScreen());
  }
}

class DocumentEditorScreenState extends State<DocumentEditorScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                height: 722.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 49.v),
                child: Stack(alignment: Alignment.bottomRight, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: EdgeInsets.only(left: 1.h),
                          padding: EdgeInsets.symmetric(vertical: 10.v),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 19.h, right: 24.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgFormattingBlack90001,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFormatting,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.only(left: 16.h)),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgFormattingBlack9000124x24,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.only(left: 16.h)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFormatting24x24,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.only(left: 16.h)),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgMaterialSymbolsLightMenu,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.only(left: 21.h)),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgMaterialSymbolsLightMenu,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.only(left: 16.h)),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgParagraph,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.only(left: 16.h)),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgParagraphBlack90001,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.only(left: 16.h))
                                    ])),
                            SizedBox(height: 9.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgNonDisclosure,
                                height: 420.v,
                                width: 352.h),
                            SizedBox(height: 9.v)
                          ]))),
                  CustomElevatedButton(
                      height: 44.v,
                      width: 205.h,
                      text: "lbl_finalize".tr,
                      margin: EdgeInsets.only(right: 65.h, bottom: 5.v),
                      buttonTextStyle:
                          CustomTextStyles.titleMediumPoppinsPrimaryContainer18,
                      onPressed: () {
                        onTapFinalize(context);
                      },
                      alignment: Alignment.bottomRight)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 91.v,
        title: Container(
            height: 72.57001.v,
            width: 297.h,
            margin: EdgeInsets.only(left: 19.h),
            child: Stack(alignment: Alignment.bottomRight, children: [
              AppbarTitleButtonOne(
                  margin: EdgeInsets.only(right: 112.h, bottom: 31.v),
                  onTap: () {
                    onTapCreateNDA(context);
                  }),
              AppbarSubtitleFour(
                  text: "msg_non_disclosure_agreement".tr,
                  margin: EdgeInsets.only(left: 33.h, top: 40.v))
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup7123,
              margin: EdgeInsets.fromLTRB(4.h, 11.v, 23.h, 43.v))
        ]);
  }

  /// Navigates to the accountScreen when the action is triggered.
  onTapCreateNDA(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.accountScreen,
    );
  }

  /// Navigates to the documentEditorTwoScreen when the action is triggered.
  onTapFinalize(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.documentEditorTwoScreen,
    );
  }
}
