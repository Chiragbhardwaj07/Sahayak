import 'package:sahayak/core/app_export.dart';
import 'package:sahayak/core/utils/image_constant.dart';
import 'package:sahayak/core/utils/size_utils.dart';
import 'package:sahayak/core/utils/validation_functions.dart';
import 'package:sahayak/localization/app_localization.dart';
import 'package:sahayak/presentation/user/bottom_navbar/bottom_navbar.dart';
import 'package:sahayak/theme/custom_text_style.dart';
import 'package:sahayak/theme/theme_helper.dart';
import 'package:sahayak/widgets/custom_elevated_button.dart';
import 'package:sahayak/widgets/custom_image_view.dart';
import 'package:sahayak/widgets/custom_outlined_button.dart';
import 'package:sahayak/widgets/custom_text_form_field.dart';

import 'models/government_id_model.dart';
import 'package:flutter/material.dart';
import 'provider/government_id_provider.dart';

class GovernmentIdScreen extends StatefulWidget {
  const GovernmentIdScreen({Key? key})
      : super(
          key: key,
        );

  @override
  GovernmentIdScreenState createState() => GovernmentIdScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GovernmentIdProvider(),
      child: GovernmentIdScreen(),
    );
  }
}

class GovernmentIdScreenState extends State<GovernmentIdScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 21.h,
              vertical: 14.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildTwenty(context),
                SizedBox(height: 29.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_aadhar_number".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                _buildEnterAadharNumberEditText(context),
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "msg_re_enter_aadhar".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                _buildReEnterAadharNumberEditText(context),
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_enter_name".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                _buildEnterNameEditText(context),
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_date_of_birth".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                _buildDateOfBirthEditText(context),
                SizedBox(height: 34.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "msg_upload_aadhar_card".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 4.v),
                _buildGovernmentID(context),
                SizedBox(height: 63.v),
                _buildRequestVerificationButton(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDoItLaterButton(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: (() {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => BottomNavbar(),
            ));
      }),
      height: 33.v,
      width: 105.h,
      text: "lbl_do_it_later".tr,
      margin: EdgeInsets.only(
        top: 7.v,
        bottom: 9.v,
      ),
      buttonStyle: CustomButtonStyles.outlineBlackTL5,
      buttonTextStyle: CustomTextStyles.titleSmallRubikBlack90001,
    );
  }

  /// Section Widget
  Widget _buildTwenty(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "lbl_details".tr,
          style: theme.textTheme.displaySmall,
        ),
        _buildDoItLaterButton(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildEnterAadharNumberEditText(BuildContext context) {
    return Selector<GovernmentIdProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.enterAadharNumberEditTextController,
      builder: (context, enterAadharNumberEditTextController, child) {
        return CustomTextFormField(
          controller: enterAadharNumberEditTextController,
          hintText: "msg_enter_your_aadhar".tr,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildReEnterAadharNumberEditText(BuildContext context) {
    return Selector<GovernmentIdProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.reEnterAadharNumberEditTextController,
      builder: (context, reEnterAadharNumberEditTextController, child) {
        return CustomTextFormField(
          controller: reEnterAadharNumberEditTextController,
          hintText: "msg_re_enter_your_aadhar".tr,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEnterNameEditText(BuildContext context) {
    return Selector<GovernmentIdProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.enterNameEditTextController,
      builder: (context, enterNameEditTextController, child) {
        return CustomTextFormField(
          controller: enterNameEditTextController,
          hintText: "msg_enter_your_aadhar".tr,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDateOfBirthEditText(BuildContext context) {
    return Selector<GovernmentIdProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.dateOfBirthEditTextController,
      builder: (context, dateOfBirthEditTextController, child) {
        return CustomTextFormField(
          controller: dateOfBirthEditTextController,
          hintText: "msg_enter_your_date".tr,
          textInputAction: TextInputAction.done,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildUploadAadharCardButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BottomNavbar(),
            ));
      },
      child: CustomElevatedButton(
        height: 50.v,
        width: 349.h,
        text: "msg_upload_aadhar_card2".tr,
        buttonStyle: CustomButtonStyles.fillLightBlue,
        buttonTextStyle: CustomTextStyles.titleSmallRubik,
        alignment: Alignment.bottomCenter,
      ),
    );
  }

  /// Section Widget
  Widget _buildGovernmentID(BuildContext context) {
    return SizedBox(
      height: 182.v,
      width: 349.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage7182x349,
            height: 182.v,
            width: 349.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            alignment: Alignment.center,
          ),
          _buildUploadAadharCardButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRequestVerificationButton(BuildContext context) {
    return CustomElevatedButton(
      height: 50.v,
      text: "msg_request_verification".tr,
      buttonStyle: CustomButtonStyles.outlineBlackTL51,
      buttonTextStyle: CustomTextStyles.titleSmallRubik,
    );
  }
}
