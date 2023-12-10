import 'models/chat_interface_model.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/presentation/home_page/home_page.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:chirag_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:chirag_s_application/widgets/custom_bottom_bar.dart';
import 'package:chirag_s_application/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/chat_interface_provider.dart';

class ChatInterfaceScreen extends StatefulWidget {
  const ChatInterfaceScreen({Key? key}) : super(key: key);

  @override
  ChatInterfaceScreenState createState() => ChatInterfaceScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ChatInterfaceProvider(),
        child: ChatInterfaceScreen());
  }
}

// ignore_for_file: must_be_immutable
class ChatInterfaceScreenState extends State<ChatInterfaceScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h, right: 14.h),
                          child: _buildForty(context,
                              chatOne: "msg_hello_i_m_your".tr)),
                      SizedBox(height: 28.v),
                      _buildUser1(context),
                      SizedBox(height: 11.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h, right: 14.h),
                          child: _buildForty(context,
                              chatOne: "msg_ok_i_would_like".tr)),
                      SizedBox(height: 5.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: 285.h,
                              margin: EdgeInsets.only(left: 54.h, right: 14.h),
                              padding: EdgeInsets.all(8.h),
                              decoration: AppDecoration.fillBlue.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL16),
                              child: Container(
                                  width: 248.h,
                                  margin: EdgeInsets.only(right: 19.h),
                                  child: Text("msg_title_and_intro".tr,
                                      maxLines: 15,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(height: 1.43))))),
                      SizedBox(height: 23.v),
                      _buildChatOne(context)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 86.v,
        leadingWidth: 288.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.only(top: 6.v, right: 244.h, bottom: 8.v)),
        title: Container(
            margin: EdgeInsets.only(left: 40.h),
            decoration: AppDecoration.column13,
            child: Column(children: [
              AppbarSubtitleTwo(
                  text: "lbl_create_an_nda".tr,
                  margin: EdgeInsets.only(right: 95.h)),
              AppbarSubtitleFour(text: "msg_create_a_nda_non_disclosure".tr)
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCloudSync,
              margin: EdgeInsets.only(left: 12.h, right: 34.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgShareIcon,
              margin: EdgeInsets.only(left: 16.h, right: 56.h))
        ]);
  }

  /// Section Widget
  Widget _buildUser1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h, right: 3.h),
        child: Row(children: [
          Expanded(
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.h, vertical: 4.v),
                  decoration: AppDecoration.fillBlue.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        Container(
                            width: 236.h,
                            margin: EdgeInsets.only(right: 22.h),
                            child: Text("msg_i_want_to_create".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleSmall!
                                    .copyWith(height: 1.43)))
                      ]))),
          Container(
              height: 48.adaptSize,
              width: 48.adaptSize,
              margin: EdgeInsets.only(left: 8.h),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder26),
              child: CustomImageView(
                  imagePath: ImageConstant.imgMaskGroup,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  alignment: Alignment.center))
        ]));
  }

  /// Section Widget
  Widget _buildChatOne(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineBlack900011,
        child: Row(children: [
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

  /// Common widget
  Widget _buildForty(
    BuildContext context, {
    required String chatOne,
  }) {
    return Row(children: [
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
              padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 5.v),
              decoration: AppDecoration.fillBlue
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderTL16),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 1.v),
                    Container(
                        width: 216.h,
                        margin: EdgeInsets.only(right: 42.h),
                        child: Text(chatOne,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall!.copyWith(
                                color: theme.colorScheme.primaryContainer
                                    .withOpacity(1),
                                height: 1.43)))
                  ])))
    ]);
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
