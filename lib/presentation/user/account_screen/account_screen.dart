import 'package:sahayak/core/app_export.dart';
import 'package:sahayak/core/utils/image_constant.dart';
import 'package:sahayak/core/utils/navigator_service.dart';
import 'package:sahayak/core/utils/size_utils.dart';
import 'package:sahayak/localization/app_localization.dart';
import 'package:sahayak/presentation/user/account_screen/ai_settings_screen/ai_settings_screen.dart';
import 'package:sahayak/presentation/user/account_screen/change_password/change_password.dart';
import 'package:sahayak/presentation/user/account_screen/edit_profile/edit_profile.dart';
import 'package:sahayak/routes/app_routes.dart';
import 'package:sahayak/theme/custom_text_style.dart';
import 'package:sahayak/theme/theme_helper.dart';
import 'package:sahayak/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:sahayak/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:sahayak/widgets/app_bar/appbar_title_image.dart';
import 'package:sahayak/widgets/app_bar/custom_app_bar.dart';
import 'package:sahayak/widgets/custom_bottom_bar.dart';
import 'package:sahayak/widgets/custom_image_view.dart';
import 'package:sahayak/widgets/custom_switch.dart';

import 'models/account_model.dart';
import 'package:flutter/material.dart';
import 'provider/account_provider.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  AccountScreenState createState() => AccountScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AccountProvider(), child: AccountScreen());
  }
}

// ignore_for_file: must_be_immutable
class AccountScreenState extends State<AccountScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
          padding: EdgeInsets.symmetric(vertical: 13.v),
          child: ListView(children: [
            Padding(
                padding: EdgeInsets.only(left: 32.h, right: 86.h),
                child: Row(children: [
                  AppbarTitleCircleimage(imagePath: ImageConstant.imgImage6),
                  AppbarSubtitleOne(
                      text: "lbl_ankur_debnath".tr,
                      margin:
                          EdgeInsets.only(left: 21.h, top: 10.v, bottom: 3.v)),
                  AppbarTitleImage(
                      imagePath: ImageConstant.imgVerifiedBadge,
                      margin:
                          EdgeInsets.only(left: 5.h, top: 19.v, bottom: 11.v),
                      onTap: () {
                        onTapVerifiedBadge(context);
                      })
                ])),
            SizedBox(height: 17.v),
            Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Divider(color: appTheme.gray400))),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: Text("msg_account_settings".tr,
                        style: CustomTextStyles.bodyLargeGray50001))),
            SizedBox(height: 19.v),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: _buildThirty(context,
                    changePasswordText: "lbl_edit_profile".tr, onTapThirty: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => EditProfilePage()));
                })),
            SizedBox(height: 21.v),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: _buildThirty(context,
                    changePasswordText: "lbl_change_password".tr,
                    onTapThirty: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ChangePassword()));
                })),
            SizedBox(height: 23.v),
            // Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 32.h),
            //     child: _buildThirty(context,
            //         changePasswordText: "msg_stamp_paper_delivery".tr)),
            // SizedBox(height: 22.v),
            // Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 32.h),
            //     child: _buildThirty(context,
            //         changePasswordText: "lbl_notary_request".tr)),
            // SizedBox(height: 23.v),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: _buildThirty(context,
                    changePasswordText: "lbl_government_id".tr,
                    onTapThirty: () {
                  onTapThirtyTwo(context);
                })),
            SizedBox(height: 20.v),
            _buildPushNotifications(context),
            SizedBox(height: 25.v),
            Divider(color: appTheme.gray400),
            SizedBox(height: 15.v),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: Text("lbl_ai_settings".tr,
                        style: CustomTextStyles.bodyLargeGray50001))),
            SizedBox(height: 11.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.h),
              child: _buildThirty(context,
                  changePasswordText: "lbl_ai_creativity".tr, onTapThirty: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => AiSettingsScreen()));
              }),
            ),
            SizedBox(height: 16.v),
            Divider(color: appTheme.gray400),
            SizedBox(height: 15.v),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: Text("lbl_editor_settings".tr,
                        style: CustomTextStyles.bodyLargeGray50001))),
            SizedBox(height: 11.v),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: _buildThirty(context,
                    changePasswordText: "msg_sharing_and_access".tr)),
            SizedBox(height: 21.v),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: _buildThirty(context,
                    changePasswordText: "lbl_expert_guidance".tr)),
            SizedBox(height: 21.v),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: InkWell(
                  onTap: () {
                    //implement logout function
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Logout',
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w300,
                            fontSize: 16),
                      ),
                      Icon(
                        Icons.logout,
                        color: Colors.red,
                        size: 20,
                      )
                    ],
                  ),
                )),
            SizedBox(height: 5.v)
          ])),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 88.v,
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 32.h, right: 86.h),
              child: Row(children: [
                AppbarTitleCircleimage(imagePath: ImageConstant.imgImage6),
                AppbarSubtitleOne(
                    text: "lbl_ankur_debnath".tr,
                    margin:
                        EdgeInsets.only(left: 21.h, top: 10.v, bottom: 3.v)),
                AppbarTitleImage(
                    imagePath: ImageConstant.imgVerifiedBadge,
                    margin: EdgeInsets.only(left: 5.h, top: 19.v, bottom: 11.v),
                    onTap: () {
                      onTapVerifiedBadge(context);
                    })
              ])),
          SizedBox(height: 17.v),
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                  width: double.maxFinite,
                  child: Divider(color: appTheme.gray400)))
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildPushNotifications(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("msg_push_notifications".tr, style: theme.textTheme.bodyLarge),
          Selector<AccountProvider, bool?>(
              selector: (context, provider) => provider.isSelectedSwitch,
              builder: (context, isSelectedSwitch, child) {
                return CustomSwitch(
                    value: isSelectedSwitch,
                    onChange: (value) {
                      context.read<AccountProvider>().changeSwitchBox(value);
                    });
              })
        ]));
  }

  /// Section Widget

  /// Common widget
  Widget _buildThirty(
    BuildContext context, {
    required String changePasswordText,
    Function? onTapThirty,
  }) {
    return GestureDetector(
        onTap: () {
          onTapThirty!.call();
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text(changePasswordText,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: appTheme.black90001))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize)
        ]));
  }

  /// Navigates to the governmentIdScreenOneScreen when the action is triggered.
  onTapVerifiedBadge(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.governmentIdScreenOneScreen,
    );
  }

  /// Navigates to the governmentIdScreenOneScreen when the action is triggered.
  onTapThirtyTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.governmentIdScreenOneScreen,
    );
  }
}
