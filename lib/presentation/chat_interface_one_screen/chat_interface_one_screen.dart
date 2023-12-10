import 'models/chat_interface_one_model.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_subtitle.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:chirag_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:chirag_s_application/widgets/custom_icon_button.dart';
import 'package:chirag_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/chat_interface_one_provider.dart';

class ChatInterfaceOneScreen extends StatefulWidget {
  const ChatInterfaceOneScreen({Key? key}) : super(key: key);

  @override
  ChatInterfaceOneScreenState createState() => ChatInterfaceOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ChatInterfaceOneProvider(),
        child: ChatInterfaceOneScreen());
  }
}

class ChatInterfaceOneScreenState extends State<ChatInterfaceOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 62.v),
                child: Column(children: [
                  _buildFrameThirtyThree(context),
                  SizedBox(height: 28.v),
                  _buildFrameThirtyTwo(context),
                  Spacer(flex: 50),
                  _buildChatOne(context),
                  Spacer(flex: 49)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 76.v,
        leadingWidth: 27.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.only(left: 2.h, top: 9.v, bottom: 22.v),
            onTap: () {
              onTapBackBtn(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Column(children: [
              AppbarSubtitle(text: "msg_create_a_document".tr),
              AppbarSubtitleFive(
                  text: "msg_create_a_document2".tr,
                  margin: EdgeInsets.only(left: 1.h, right: 55.h))
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup7123,
              margin: EdgeInsets.fromLTRB(16.h, 11.v, 16.h, 27.v))
        ]);
  }

  /// Section Widget
  Widget _buildFrameThirtyThree(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child: CustomIconButton(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgRectangle1148x48))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 8.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 19.h, vertical: 4.v),
                  decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        Container(
                            width: 233.h,
                            margin: EdgeInsets.only(right: 13.h),
                            child: Text("msg_hello_i_m_your".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .labelLargePrimaryContainer13
                                    .copyWith(height: 1.47)))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildFrameThirtyTwo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.h, vertical: 4.v),
                  decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        SizedBox(
                            width: 219.h,
                            child: Text("msg_i_want_to_create".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .labelLargePrimaryContainer13_1
                                    .copyWith(height: 1.54)))
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
        margin: EdgeInsets.only(left: 1.h),
        decoration: AppDecoration.outlineBlack900011,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Selector<ChatInterfaceOneProvider, TextEditingController?>(
                  selector: (context, provider) => provider.chatOneController,
                  builder: (context, chatOneController, child) {
                    return CustomTextFormField(
                        controller: chatOneController,
                        hintText: ' Type your message',
                        hintStyle: CustomTextStyles.labelLargeBlack90001,
                        textInputAction: TextInputAction.done,
                        borderDecoration:
                            TextFormFieldStyleHelper.fillPrimaryContainer,
                        fillColor: Colors.grey[300]);
                  })),
          CustomImageView(
              imagePath: ImageConstant.imgSendBtn,
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 6.v),
              onTap: () {
                onTapImgSendBtn(context);
              })
        ]));
  }

  /// Navigates to the accountScreen when the action is triggered.
  onTapBackBtn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.accountScreen,
    );
  }

  /// Navigates to the chatInterfaceScreen when the action is triggered.
  onTapImgSendBtn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chatInterfaceScreen,
    );
  }
}
