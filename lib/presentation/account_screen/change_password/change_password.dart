import 'package:flutter/material.dart';
import 'package:sahayak/core/utils/size_utils.dart';
import 'package:sahayak/core/utils/utils.dart';
import 'package:sahayak/core/utils/validation_functions.dart';
import 'package:sahayak/theme/custom_text_style.dart';
import 'package:sahayak/widgets/custom_elevated_button.dart';
import 'package:sahayak/widgets/custom_text_form_field.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController oldpasswordFieldController = TextEditingController();
  TextEditingController newpasswordFieldController = TextEditingController();
  TextEditingController confirmNewpasswordFieldController =
      TextEditingController();
  bool isShowPassword = false; // Move isShowPassword to the state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios)),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Change Password',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(height: 28.v),
            _buildPasswordField(
              context,
              oldpasswordFieldController,
              'Enter Old Password',
            ),
            SizedBox(height: 28.v),
            _buildPasswordField(
              context,
              newpasswordFieldController,
              'Enter New Password',
            ),
            SizedBox(height: 28.v),
            _buildPasswordField(
              context,
              confirmNewpasswordFieldController,
              'Confirm New Password',
            ),
            SizedBox(height: 28.v),
            CustomElevatedButton(
                text: 'Change Password',
                margin: EdgeInsets.symmetric(horizontal: 7.h),
                onPressed: () {
                  if (newpasswordFieldController.text ==
                      confirmNewpasswordFieldController.text) {
                    Utils.toastmessage('Password changed');
                    Navigator.pop(context);
                  } else if (newpasswordFieldController.text.length < 6) {
                    Utils.ShowSnackbar(
                        'Please enter at least 6 Digit password', context);
                  } else if (newpasswordFieldController.text !=
                      confirmNewpasswordFieldController.text) {
                    Utils.ShowSnackbar(
                        'Confirm password should be same', context);
                  }
                })
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordField(
    BuildContext context,
    TextEditingController controller,
    String hint,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: CustomTextFormField(
        controller: controller,
        hintText: hint,
        hintStyle: CustomTextStyles.bodyLargePoppinsBlack9000116,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
          onTap: () {
            setState(() {
              isShowPassword = !isShowPassword;
            });
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(12.h, 12.v, 13.h, 12.v),
            child: isShowPassword
                ? Icon(Icons.visibility)
                : Icon(Icons.visibility_off),
          ),
        ),
        suffixConstraints: BoxConstraints(maxHeight: 48.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return 'err_msg_please_enter_valid_password';
          }
          return null;
        },
        obscureText: !isShowPassword,
        contentPadding: EdgeInsets.only(left: 11.h, top: 12.v, bottom: 12.v),
      ),
    );
  }
}
