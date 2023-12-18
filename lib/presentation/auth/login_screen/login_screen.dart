import 'package:chirag_s_application/core/utils/utils.dart';

import 'models/login_model.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/core/utils/validation_functions.dart';
import 'package:chirag_s_application/widgets/custom_checkbox_button.dart';
import 'package:chirag_s_application/widgets/custom_elevated_button.dart';
import 'package:chirag_s_application/widgets/custom_icon_button.dart';
import 'package:chirag_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/login_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginProvider(), child: LoginScreen());
  }
}

// ignore_for_file: must_be_immutable
class LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    LoginProvider provider = context.read<LoginProvider>();

    // Accessing the passwordController from the provider
    TextEditingController passwordController = provider.passwordController;
    TextEditingController emailController = provider.emailController;

    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
            key: _formKey,
            child: Container(
                width: 390.h,
                padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 46.v),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text("lbl_login".tr, style: theme.textTheme.displaySmall),
                  SizedBox(height: 63.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text("lbl_email".tr,
                              style:
                                  CustomTextStyles.titleSmallPoppinsGray700))),
                  SizedBox(height: 6.v),
                  Padding(
                      padding: EdgeInsets.only(left: 10.h, right: 4.h),
                      child: Selector<LoginProvider, TextEditingController?>(
                          selector: (context, provider) =>
                              provider.emailController,
                          builder: (context, emailController, child) {
                            return CustomTextFormField(
                                controller: emailController,
                                hintText: 'Enter Your Email',
                                hintStyle: CustomTextStyles
                                    .bodyLargePoppinsBlack9000116_2,
                                textInputType: TextInputType.emailAddress,
                                prefix: Icon(Icons.mail),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "err_msg_please_enter_valid_email"
                                        .tr;
                                  }
                                  return null;
                                },
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10.h, vertical: 12.v));
                          })),
                  SizedBox(height: 19.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Text("lbl_password".tr,
                              style:
                                  CustomTextStyles.titleSmallPoppinsGray700))),
                  SizedBox(height: 5.v),
                  Padding(
                      padding: EdgeInsets.only(left: 10.h, right: 4.h),
                      child: Consumer<LoginProvider>(
                          builder: (context, provider, child) {
                        return CustomTextFormField(
                            prefix: Icon(Icons.lock),
                            controller: provider.passwordController,
                            hintText: "msg_enter_your_password".tr,
                            hintStyle:
                                CustomTextStyles.bodyLargePoppinsBlack9000116_2,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                                onTap: () {
                                  provider.changePasswordVisibility();
                                },
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        12.h, 17.v, 15.h, 13.v),
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
                            contentPadding: EdgeInsets.only(
                                left: 10.h, top: 12.v, bottom: 12.v),
                            borderDecoration:
                                TextFormFieldStyleHelper.outlineBlackTL10);
                      })),
                  SizedBox(height: 25.v),
                  Padding(
                      padding: EdgeInsets.only(left: 10.h, right: 4.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildRememberMeSection(context),
                            Text("msg_forgot_password".tr,
                                style:
                                    CustomTextStyles.titleSmallPoppinsBlue80001)
                          ])),
                  SizedBox(height: 39.v),
                  CustomElevatedButton(
                      text: "lbl_login".tr,
                      margin: EdgeInsets.only(left: 10.h, right: 3.h),
                      onPressed: () {
                        if (emailController.text.isEmpty) {
                          Utils.ShowSnackbar('Enter Email', context);
                        } else if (passwordController.text.isEmpty) {
                          Utils.ShowSnackbar('Enter password', context);
                        } else if (passwordController.text.length < 6) {
                          Utils.ShowSnackbar('Password min 6 digits', context);
                        } else {
                          Navigator.of(context).pushNamed(AppRoutes.optScreen);
                        }
                      }),
                  SizedBox(height: 45.v),
                  _buildLineFieldSection(context),
                  SizedBox(height: 60.v),
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
                  SizedBox(height: 58.v),
                  GestureDetector(
                      onTap: () {
                        onTapAlredyAccountLogin(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("msg_dont_have_an_account".tr,
                                    style: CustomTextStyles
                                        .titleMediumPoppinsBlack90001
                                        .copyWith(
                                            decoration: TextDecoration.none)),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text("lbl_sign_up".tr,
                                        style: CustomTextStyles
                                            .titleMediumPoppinsBlueA400
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline)))
                              ]))),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildRememberMeSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: Selector<LoginProvider, bool?>(
            selector: (context, provider) => provider.rememberMeSection,
            builder: (context, rememberMeSection, child) {
              return CustomCheckboxButton(
                  text: "lbl_remember_me".tr,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  value: rememberMeSection,
                  onChange: (value) {
                    context.read<LoginProvider>().changeCheckBox(value);
                  });
            }));
  }

  /// Section Widget
  Widget _buildLineFieldSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
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
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.optScreen,
    );
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapAlredyAccountLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registerScreen,
    );
  }
}
