import 'models/chat_interface_two_model.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/presentation/home_page/home_page.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:chirag_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:chirag_s_application/widgets/custom_bottom_bar.dart';
import 'package:chirag_s_application/widgets/custom_elevated_button.dart';
import 'package:chirag_s_application/widgets/custom_icon_button.dart';
import 'package:chirag_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/chat_interface_two_provider.dart';

class ChatInterfaceTwoScreen extends StatefulWidget {
  const ChatInterfaceTwoScreen({Key? key}) : super(key: key);

  @override
  ChatInterfaceTwoScreenState createState() => ChatInterfaceTwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ChatInterfaceTwoProvider(),
        child: ChatInterfaceTwoScreen());
  }
}

// ignore_for_file: must_be_immutable
class ChatInterfaceTwoScreenState extends State<ChatInterfaceTwoScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray300,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
                child: Column(children: [
                  SizedBox(height: 30.v),
                  _buildAiRow(context),
                  SizedBox(height: 11.v),
                  Container(
                      margin: EdgeInsets.only(left: 1.h, right: 2.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 11.h, vertical: 10.v),
                      decoration: AppDecoration.fillPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 6.v),
                            _buildSubjectValueColumn(context),
                            SizedBox(height: 16.v),
                            _buildAadharnoEditText(context),
                            SizedBox(height: 16.v),
                            _buildAadharnoEditText1(context),
                            SizedBox(height: 16.v),
                            _buildAadharnoEditText2(context),
                            SizedBox(height: 16.v),
                            _buildAadharnoEditText3(context),
                            SizedBox(height: 16.v),
                            _buildAadharnoEditText4(context),
                            SizedBox(height: 16.v),
                            _buildAadharnoEditText5(context),
                            SizedBox(height: 16.v),
                            _buildAadharnoEditText6(context),
                            SizedBox(height: 16.v),
                            _buildSubmitRequestButton(context)
                          ])),
                  SizedBox(height: 11.v),
                  _buildChatOneRow(context)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 86.v,
        leadingWidth: 291.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.only(top: 6.v, right: 247.h, bottom: 8.v)),
        title: Container(
            margin: EdgeInsets.only(left: 35.h),
            decoration: AppDecoration.column13,
            child: Column(children: [
              AppbarSubtitleTwo(
                  text: "lbl_create_an_nda".tr,
                  margin: EdgeInsets.only(right: 103.h)),
              AppbarSubtitleFour(text: "msg_create_a_nda_non_disclosure2".tr)
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCloudSync,
              margin: EdgeInsets.only(left: 9.h, right: 34.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgShareIcon,
              margin: EdgeInsets.only(left: 16.h, right: 56.h))
        ]);
  }

  /// Section Widget
  Widget _buildAiRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 1.h, right: 14.h),
            child: Row(children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  child: CustomIconButton(
                      height: 48.adaptSize,
                      width: 48.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgRectangle1148x48))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 5.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 13.h, vertical: 4.v),
                      decoration: AppDecoration.fillBlue.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 2.v),
                            Container(
                                width: 231.h,
                                margin: EdgeInsets.only(right: 27.h),
                                child: Text("msg_submit_a_request".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleSmall!
                                        .copyWith(height: 1.43)))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildSubjectValueColumn(BuildContext context) {
    return Selector<ChatInterfaceTwoProvider, TextEditingController?>(
        selector: (context, provider) => provider.subjectValueColumnController,
        builder: (context, subjectValueColumnController, child) {
          return CustomTextFormField(
              controller: subjectValueColumnController,
              hintText: "lbl_subject".tr);
        });
  }

  /// Section Widget
  Widget _buildAadharnoEditText(BuildContext context) {
    return Selector<ChatInterfaceTwoProvider, TextEditingController?>(
        selector: (context, provider) => provider.aadharnoEditTextController,
        builder: (context, aadharnoEditTextController, child) {
          return CustomTextFormField(
              controller: aadharnoEditTextController,
              hintText: "msg_parties_involved".tr);
        });
  }

  /// Section Widget
  Widget _buildAadharnoEditText1(BuildContext context) {
    return Selector<ChatInterfaceTwoProvider, TextEditingController?>(
        selector: (context, provider) => provider.aadharnoEditTextController1,
        builder: (context, aadharnoEditTextController1, child) {
          return CustomTextFormField(
              controller: aadharnoEditTextController1,
              hintText: "msg_subject_matter_of".tr);
        });
  }

  /// Section Widget
  Widget _buildAadharnoEditText2(BuildContext context) {
    return Selector<ChatInterfaceTwoProvider, TextEditingController?>(
        selector: (context, provider) => provider.aadharnoEditTextController2,
        builder: (context, aadharnoEditTextController2, child) {
          return CustomTextFormField(
              controller: aadharnoEditTextController2,
              hintText: "msg_laws_and_sections".tr);
        });
  }

  /// Section Widget
  Widget _buildAadharnoEditText3(BuildContext context) {
    return Selector<ChatInterfaceTwoProvider, TextEditingController?>(
        selector: (context, provider) => provider.aadharnoEditTextController3,
        builder: (context, aadharnoEditTextController3, child) {
          return CustomTextFormField(
              controller: aadharnoEditTextController3,
              hintText: "msg_permitted_disclosures".tr);
        });
  }

  /// Section Widget
  Widget _buildAadharnoEditText4(BuildContext context) {
    return Selector<ChatInterfaceTwoProvider, TextEditingController?>(
        selector: (context, provider) => provider.aadharnoEditTextController4,
        builder: (context, aadharnoEditTextController4, child) {
          return CustomTextFormField(
              controller: aadharnoEditTextController4,
              hintText: "msg_duration_of_agreement".tr);
        });
  }

  /// Section Widget
  Widget _buildAadharnoEditText5(BuildContext context) {
    return Selector<ChatInterfaceTwoProvider, TextEditingController?>(
        selector: (context, provider) => provider.aadharnoEditTextController5,
        builder: (context, aadharnoEditTextController5, child) {
          return CustomTextFormField(
              controller: aadharnoEditTextController5,
              hintText: "msg_consequences_of".tr);
        });
  }

  /// Section Widget
  Widget _buildAadharnoEditText6(BuildContext context) {
    return Selector<ChatInterfaceTwoProvider, TextEditingController?>(
        selector: (context, provider) => provider.aadharnoEditTextController6,
        builder: (context, aadharnoEditTextController6, child) {
          return CustomTextFormField(
              controller: aadharnoEditTextController6,
              hintText: "msg_witness_and_notary".tr,
              textInputAction: TextInputAction.done);
        });
  }

  /// Section Widget
  Widget _buildSubmitRequestButton(BuildContext context) {
    return CustomElevatedButton(
        height: 33.v,
        text: "lbl_submit_request".tr,
        buttonStyle: CustomButtonStyles.fillLightGreen,
        buttonTextStyle: CustomTextStyles.titleSmallPoppinsPrimaryContainer);
  }

  /// Section Widget
  Widget _buildChatOneRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 3.h),
        decoration: AppDecoration.outlineBlack900011,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.v),
                  decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        Container(
                            width: 239.h,
                            margin: EdgeInsets.only(right: 40.h),
                            child: Text("msg_ok_so_i_am_ankur".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleSmallBlack90001
                                    .copyWith(height: 1.43)))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgSendBtn,
              height: 48.adaptSize,
              width: 48.adaptSize,
              margin: EdgeInsets.only(left: 6.h),
              onTap: () {
                onTapImgSendBtn(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Generate:
        return "/";
      case BottomBarEnum.Documents:
        return "/";
      case BottomBarEnum.Account:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the chatInterfaceThreeScreen when the action is triggered.
  onTapImgSendBtn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chatInterfaceThreeScreen,
    );
  }
}
