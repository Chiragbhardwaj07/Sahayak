import 'models/chat_interface_three_model.dart';
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
import 'package:flutter/material.dart';
import 'provider/chat_interface_three_provider.dart';

class ChatInterfaceThreeScreen extends StatefulWidget {
  const ChatInterfaceThreeScreen({Key? key}) : super(key: key);

  @override
  ChatInterfaceThreeScreenState createState() =>
      ChatInterfaceThreeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ChatInterfaceThreeProvider(),
        child: ChatInterfaceThreeScreen());
  }
}

// ignore_for_file: must_be_immutable
class ChatInterfaceThreeScreenState extends State<ChatInterfaceThreeScreen> {
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
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 12.v),
                child: Column(children: [
                  SizedBox(height: 10.v),
                  _buildAi1(context),
                  SizedBox(height: 12.v),
                  _buildOpenInEditor(context),
                  SizedBox(height: 32.v),
                  _buildChatOne(context)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 86.v,
        leadingWidth: 292.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.only(top: 6.v, right: 248.h, bottom: 8.v)),
        title: Container(
            margin: EdgeInsets.only(left: 40.h),
            decoration: AppDecoration.column13,
            child: Column(children: [
              AppbarSubtitleTwo(
                  text: "lbl_create_an_nda".tr,
                  margin: EdgeInsets.only(right: 99.h)),
              AppbarSubtitleFour(text: "msg_create_a_nda_non_disclosure2".tr)
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCloudSync,
              margin: EdgeInsets.only(left: 8.h, right: 34.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgShareIcon,
              margin: EdgeInsets.only(left: 16.h, right: 56.h))
        ]);
  }

  /// Section Widget
  Widget _buildAi1(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 2.h, right: 15.h),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(top: 20.v, bottom: 44.v),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 1.v),
                            Container(
                                width: 257.h,
                                margin: EdgeInsets.only(right: 1.h),
                                child: Text("msg_to_ensure_that_i".tr,
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleSmall!
                                        .copyWith(height: 1.43)))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildOpenInEditor(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 4.h),
        decoration: AppDecoration.outlineBlack900013,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 9.v),
            decoration: AppDecoration.fillPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgNonDisclosure,
                  height: 338.v,
                  width: 330.h),
              SizedBox(height: 7.v),
              CustomElevatedButton(
                  height: 40.v,
                  text: "lbl_open_in_editor".tr,
                  margin: EdgeInsets.symmetric(horizontal: 11.h),
                  buttonStyle: CustomButtonStyles.fillBlue,
                  buttonTextStyle:
                      CustomTextStyles.titleMediumPoppinsPrimaryContainer,
                  onPressed: () {
                    onTapOpenInEditor(context);
                  })
            ])));
  }

  /// Section Widget
  Widget _buildChatOne(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 2.h),
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
              margin: EdgeInsets.only(left: 6.h))
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

  /// Navigates to the documentEditorScreen when the action is triggered.
  onTapOpenInEditor(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.documentEditorScreen,
    );
  }
}
