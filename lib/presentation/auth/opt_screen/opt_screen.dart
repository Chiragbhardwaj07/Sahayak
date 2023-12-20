import 'package:sahayak/core/app_export.dart';
import 'package:sahayak/core/utils/image_constant.dart';
import 'package:sahayak/core/utils/navigator_service.dart';
import 'package:sahayak/core/utils/size_utils.dart';
import 'package:sahayak/localization/app_localization.dart';
import 'package:sahayak/presentation/user/bottom_navbar/bottom_navbar.dart';
import 'package:sahayak/routes/app_routes.dart';
import 'package:sahayak/theme/theme_helper.dart';
import 'package:sahayak/widgets/app_bar/appbar_leading_image.dart';
import 'package:sahayak/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:sahayak/widgets/app_bar/custom_app_bar.dart';
import 'package:sahayak/widgets/custom_elevated_button.dart';
import 'package:sahayak/widgets/custom_pin_code_text_field.dart';

import 'models/opt_model.dart';
import 'package:flutter/material.dart';
import 'provider/opt_provider.dart';

class OptScreen extends StatefulWidget {
  const OptScreen({Key? key}) : super(key: key);

  @override
  OptScreenState createState() => OptScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => OptProvider(), child: OptScreen());
  }
}

class OptScreenState extends State<OptScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 25.v),
            child: Column(children: [
              Text("lbl_enter_your_otp".tr,
                  style: theme.textTheme.displaySmall),
              SizedBox(height: 9.v),
              Container(
                  width: 296.h,
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Text("msg_enter_the_4_digit".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium)),
              SizedBox(height: 75.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h, right: 4.h),
                  child: Selector<OptProvider, TextEditingController?>(
                      selector: (context, provider) => provider.otpController,
                      builder: (context, otpController, child) {
                        return CustomPinCodeTextField(
                            context: context,
                            controller: otpController,
                            onChanged: (value) {
                              otpController?.text = value;
                            });
                      })),
              Spacer(flex: 22),
              CustomElevatedButton(
                  text: "lbl_continue".tr,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => BottomNavbar()));
                  }),
              SizedBox(height: 23.v),
              Text("msg_didn_t_receive_a".tr,
                  style: theme.textTheme.bodyMedium),
              SizedBox(height: 12.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend Code',
                        style: TextStyle(color: Colors.blue, fontSize: 13),
                      )),
                  Text(
                    '|',
                    style: TextStyle(color: Colors.blue, fontSize: 13),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Change Number',
                        style: TextStyle(color: Colors.blue, fontSize: 13),
                      )),
                ],
              ),
              Spacer(flex: 67)
            ])));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.only(left: 38.h, top: 18.v, bottom: 20.v)),
        title: AppbarSubtitleThree(
            text: "lbl_back".tr, margin: EdgeInsets.only(left: 9.h)));
  }

  /// Navigates to the governmentIdScreen when the action is triggered.
  onTapContinue(BuildContext context) {}
}
