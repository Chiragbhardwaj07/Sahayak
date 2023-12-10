import 'models/document_editor_two_model.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_title_button_two.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:chirag_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:chirag_s_application/widgets/custom_elevated_button.dart';
import 'package:chirag_s_application/widgets/custom_outlined_button.dart';
import 'package:chirag_s_application/widgets/custom_radio_button.dart';
import 'package:chirag_s_application/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'provider/document_editor_two_provider.dart';

class DocumentEditorTwoScreen extends StatefulWidget {
  const DocumentEditorTwoScreen({Key? key}) : super(key: key);

  @override
  DocumentEditorTwoScreenState createState() => DocumentEditorTwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DocumentEditorTwoProvider(),
        child: DocumentEditorTwoScreen());
  }
}

class DocumentEditorTwoScreenState extends State<DocumentEditorTwoScreen> {
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
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 33.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("msg_document_preview".tr,
                                      style: theme.textTheme.titleMedium)),
                              SizedBox(height: 30.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgNonDisclosure,
                                  height: 288.v,
                                  width: 300.h,
                                  alignment: Alignment.center),
                              SizedBox(height: 27.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 11.h),
                                  child: Text("msg_select_review_type".tr,
                                      style: theme.textTheme.titleLarge)),
                              SizedBox(height: 7.v),
                              CustomOutlinedButton(
                                  text: "msg_format_check_and".tr,
                                  margin:
                                      EdgeInsets.only(left: 11.h, right: 91.h)),
                              SizedBox(height: 27.v),
                              _buildEleven(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitleButtonTwo(
            margin: EdgeInsets.only(left: 19.h),
            onTap: () {
              onTapReview(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFrame30,
              margin: EdgeInsets.fromLTRB(40.h, 17.v, 40.h, 11.v))
        ]);
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 11.v),
        decoration: AppDecoration.outlineGray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("msg_print_and_deliver".tr,
                        style: theme.textTheme.titleLarge),
                    Selector<DocumentEditorTwoProvider, bool?>(
                        selector: (context, provider) =>
                            provider.isSelectedSwitch,
                        builder: (context, isSelectedSwitch, child) {
                          return CustomSwitch(
                              margin: EdgeInsets.only(top: 6.v),
                              value: isSelectedSwitch,
                              onChange: (value) {
                                context
                                    .read<DocumentEditorTwoProvider>()
                                    .changeSwitchBox(value);
                              });
                        })
                  ])),
          SizedBox(height: 22.v),
          Padding(
              padding: EdgeInsets.only(left: 8.h, right: 16.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgFrame31,
                        height: 67.v,
                        width: 15.h,
                        margin: EdgeInsets.only(top: 5.v, bottom: 102.v)),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Column(children: [
                              Consumer<DocumentEditorTwoProvider>(
                                  builder: (context, provider, child) {
                                return CustomRadioButton(
                                    text: "msg_home_address_32_a".tr,
                                    value: "msg_home_address_32_a".tr ?? "",
                                    groupValue: provider.radioGroup,
                                    onChange: (value) {
                                      provider.changeRadioButton(value);
                                    });
                              }),
                              SizedBox(height: 5.v),
                              Container(
                                  width: 276.h,
                                  margin: EdgeInsets.only(right: 3.h),
                                  child: Text("msg_work_address_2nd".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodyLargeMontserrat)),
                              SizedBox(height: 32.v),
                              CustomElevatedButton(
                                  height: 42.v,
                                  text: "lbl_send_for_review".tr,
                                  margin:
                                      EdgeInsets.only(left: 6.h, right: 29.h),
                                  buttonTextStyle: CustomTextStyles
                                      .titleMediumPoppinsPrimaryContainer18,
                                  alignment: Alignment.centerLeft)
                            ])))
                  ])),
          SizedBox(height: 69.v)
        ]));
  }

  /// Navigates to the accountScreen when the action is triggered.
  onTapReview(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.accountScreen,
    );
  }
}
