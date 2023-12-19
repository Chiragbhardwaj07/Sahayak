import 'package:sahayak/core/app_export.dart';
import 'package:sahayak/core/utils/navigator_service.dart';
import 'package:sahayak/core/utils/size_utils.dart';
import 'package:sahayak/localization/app_localization.dart';
import 'package:sahayak/routes/app_routes.dart';
import 'package:sahayak/theme/custom_text_style.dart';
import 'package:sahayak/theme/theme_helper.dart';
import 'package:sahayak/widgets/custom_switch.dart';

import 'models/ai_settings_model.dart';
import 'package:flutter/material.dart';
import 'provider/ai_settings_provider.dart';

class AiSettingsScreen extends StatefulWidget {
  const AiSettingsScreen({Key? key}) : super(key: key);

  @override
  AiSettingsScreenState createState() => AiSettingsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AiSettingsProvider(), child: AiSettingsScreen());
  }
}

class AiSettingsScreenState extends State<AiSettingsScreen> {
  @override
  void initState() {
    super.initState();
  }

  double value1 = 50;
  double value2 = 50;
  String selectedValue1 = '2k tokens';
  String selectedValue2 = '1.0';

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 37.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios)),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'AI Settings',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("msg_ai_creativity_level".tr,
                          style: CustomTextStyles.titleMediumMedium),
                      SizedBox(height: 19.v),
                      Text("msg_creativity_level".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 11.v),
                      Consumer<AiSettingsProvider>(
                        builder: (context, value, child) {
                          return Slider(
                            value: value
                                .value, // Set initial value or bind it to a variable
                            onChanged: (double val) {
                              value.setValue1(val);

                              // Handle slider value change
                            },
                            min: 0, // Set the minimum value
                            max: 100, // Set the maximum value
                          );
                        },
                      ),
                      SizedBox(height: 21.v),
                      Text("lbl_ai_temperature".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 11.v),
                      Consumer<AiSettingsProvider>(
                        builder: (context, value, child) {
                          return Slider(
                            value: value
                                .val2, // Set initial value or bind it to a variable
                            onChanged: (double val) {
                              value.setValue2(val);

                              // Handle slider value change
                            },
                            min: 0, // Set the minimum value
                            max: 100, // Set the maximum value
                          );
                        },
                      ),
                      SizedBox(height: 33.v),
                      _buildAiCreativityLevelRow(context),
                      SizedBox(height: 19.v),
                      _buildAiTopKRow(context),
                      SizedBox(height: 20.v),
                      _buildAllowFeedbackQuestionsRow(context),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildAiCreativityLevelRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 5.v),
              child: Text("lbl_ai_token_limit".tr,
                  style: theme.textTheme.bodyLarge)),
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButton<String>(
                  value: selectedValue1,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue1 = newValue!;
                    });
                  },
                  items: <String>[
                    '1k tokens',
                    '2k tokens',
                    '3k tokens',
                    '4k tokens'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ])
        ]));
  }

  /// Section Widget
  Widget _buildAiTopKRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v, bottom: 3.v),
              child: Text("lbl_ai_top_k".tr, style: theme.textTheme.bodyLarge)),
          DropdownButton<String>(
            value: selectedValue2,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue2 = newValue!;
              });
            },
            items: <String>['1.0', '2.0', '3.0', '4.0']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(color: Colors.black87),
                ),
              );
            }).toList(),
          ),
        ]));
  }

  /// Section Widget
  Widget _buildAllowFeedbackQuestionsRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("msg_allow_feedback_questions".tr, style: theme.textTheme.bodyLarge),
      Selector<AiSettingsProvider, bool?>(
          selector: (context, provider) => provider.isSelectedSwitch,
          builder: (context, isSelectedSwitch, child) {
            return CustomSwitch(
                value: isSelectedSwitch,
                onChange: (value) {
                  context.read<AiSettingsProvider>().changeSwitchBox(value);
                });
          })
    ]);
  }

  /// Navigates to the accountScreen when the action is triggered.
  onTapAISettings(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.accountScreen,
    );
  }
}
