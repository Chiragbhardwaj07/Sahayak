import 'models/register_model.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/core/utils/validation_functions.dart';
import 'package:chirag_s_application/widgets/custom_elevated_button.dart';
import 'package:chirag_s_application/widgets/custom_icon_button.dart';
import 'package:chirag_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/register_provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  RegisterScreenState createState() => RegisterScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RegisterProvider(), child: RegisterScreen());
  }
}

// ignore_for_file: must_be_immutable
class RegisterScreenState extends State<RegisterScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
            key: _formKey,
            child: Container(
                width: 390.h,
                padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 42.v),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text("msg_create_an_account".tr,
                      style: theme.textTheme.displaySmall),
                  SizedBox(height: 51.v),
                  _buildEmailField(context),
                  SizedBox(height: 28.v),
                  _buildNameField(context),
                  SizedBox(height: 28.v),
                  _buildPhoneNumberField(context),
                  SizedBox(height: 28.v),
                  _buildPasswordField(context),
                  SizedBox(height: 29.v),
                  _buildRegisterButton(context),
                  SizedBox(height: 31.v),
                  _buildLineField(context),
                  SizedBox(height: 43.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 53.adaptSize,
                                width: 53.adaptSize,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3.h, vertical: 4.v),
                                decoration: AppDecoration.outlineGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder26),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgGoogleLogo,
                                    height: 42.v,
                                    width: 44.h,
                                    alignment: Alignment.center)),
                            CustomIconButton(
                                height: 53.adaptSize,
                                width: 53.adaptSize,
                                padding: EdgeInsets.all(5.h),
                                decoration: IconButtonStyleHelper.outlineGray,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgLogosFacebook)),
                            CustomIconButton(
                                height: 53.adaptSize,
                                width: 53.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                decoration: IconButtonStyleHelper.outlineGray,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgSimpleIconsX))
                          ])),
                  SizedBox(height: 59.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("msg_already_have_an".tr,
                                style: CustomTextStyles
                                    .titleMediumPoppinsBlack90001
                                    .copyWith(decoration: TextDecoration.none)),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtLogin(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("lbl_login".tr,
                                        style: CustomTextStyles
                                            .titleMediumPoppinsBlueA400
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline))))
                          ])),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h, right: 7.h),
        child: Selector<RegisterProvider, TextEditingController?>(
            selector: (context, provider) => provider.emailFieldController,
            builder: (context, emailFieldController, child) {
              return CustomTextFormField(
                  controller: emailFieldController,
                  hintText: "msg_enter_your_email".tr,
                  hintStyle: CustomTextStyles.bodyLargePoppinsBlack9000116,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v));
            }));
  }

  /// Section Widget
  Widget _buildNameField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child: Selector<RegisterProvider, TextEditingController?>(
            selector: (context, provider) => provider.nameFieldController,
            builder: (context, nameFieldController, child) {
              return CustomTextFormField(
                  controller: nameFieldController,
                  hintText: "lbl_enter_your_name".tr,
                  hintStyle: CustomTextStyles.bodyLargePoppinsBlack9000116,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v));
            }));
  }

  /// Section Widget
  Widget _buildPhoneNumberField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child: Selector<RegisterProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.phoneNumberFieldController,
            builder: (context, phoneNumberFieldController, child) {
              return CustomTextFormField(
                  controller: phoneNumberFieldController,
                  hintText: "msg_enter_your_phone".tr,
                  hintStyle: CustomTextStyles.bodyLargePoppinsBlack9000116,
                  textInputType: TextInputType.phone,
                  validator: (value) {
                    if (!isValidPhone(value)) {
                      return "err_msg_please_enter_valid_phone_number".tr;
                    }
                    return null;
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v));
            }));
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child: Consumer<RegisterProvider>(builder: (context, provider, child) {
          return CustomTextFormField(
              controller: provider.passwordFieldController,
              hintText: "msg_enter_your_password".tr,
              hintStyle: CustomTextStyles.bodyLargePoppinsBlack9000116,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              suffix: InkWell(
                  onTap: () {
                    provider.changePasswordVisibility();
                  },
                  child: Container(
                      margin: EdgeInsets.fromLTRB(12.h, 12.v, 13.h, 12.v),
                      child: provider.isShowPassword
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility))),
              suffixConstraints: BoxConstraints(maxHeight: 48.v),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: provider.isShowPassword,
              contentPadding:
                  EdgeInsets.only(left: 11.h, top: 12.v, bottom: 12.v));
        }));
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_register".tr,
        margin: EdgeInsets.symmetric(horizontal: 7.h),
        onPressed: () {
          onTapRegisterButton(context);
        });
  }

  /// Section Widget
  Widget _buildLineField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 18.v, bottom: 7.v),
                  child: SizedBox(width: 116.h, child: Divider())),
              Text("lbl_or_with".tr,
                  style: CustomTextStyles.bodyLargePoppinsBlack90001),
              Padding(
                  padding: EdgeInsets.only(top: 18.v, bottom: 7.v),
                  child: SizedBox(width: 116.h, child: Divider()))
            ]));
  }

  /// Navigates to the optScreen when the action is triggered.
  onTapRegisterButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.optScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
