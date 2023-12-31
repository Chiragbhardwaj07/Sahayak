import 'package:sahayak/core/app_export.dart';
import 'package:sahayak/core/utils/image_constant.dart';
import 'package:sahayak/core/utils/size_utils.dart';
import 'package:sahayak/localization/app_localization.dart';
import 'package:sahayak/presentation/user/home_page/Template/Template_page.dart';
import 'package:sahayak/presentation/user/home_page/Template/models/template_item_model.dart';
import 'package:sahayak/presentation/user/home_page/Template/widget/template_item_widget.dart';
import 'package:sahayak/theme/custom_text_style.dart';
import 'package:sahayak/theme/theme_helper.dart';
import 'package:sahayak/widgets/app_bar/appbar_leading_image.dart';
import 'package:sahayak/widgets/app_bar/appbar_title_searchview.dart';
import 'package:sahayak/widgets/app_bar/custom_app_bar.dart';
import 'package:sahayak/widgets/custom_image_view.dart';

import '../home_page/widgets/homepage_item_widget.dart';
import 'models/home_model.dart';
import 'models/homepage_item_model.dart';

import 'package:flutter/material.dart';
import 'provider/home_provider.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: HomePage(),
    );
  }
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          appBar: _buildAppBar(context),
          body: SizedBox(
            width: double.maxFinite,
            child: ListView(
              children: [
                _buildThirtyOne(context, 'Templates'),
                SizedBox(
                  height: 300,
                  child: Consumer<HomeProvider>(
                    builder: (context, provider, child) {
                      return ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          TemplateItemModel model =
                              provider.templateModelObj.templateList[index];
                          return TemplateItemModelItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
                _buildThirtyOne(context, 'Contact An Expert'),
                SizedBox(height: 15.v),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                            height: 150,
                            width: 150,
                            child: Card(
                              color: Color(0XFFA8D1D1),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CircleAvatar(
                                      radius: 38,
                                      child: Image.asset(
                                          'assets/images/cons_law.png')),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Constitutional',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'Law',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                            height: 150,
                            width: 150,
                            child: Card(
                              color: Color(0XFFDFEBEB),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CircleAvatar(
                                      radius: 40,
                                      child: Image.asset(
                                          'assets/images/criminal_law.png')),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Criminal Law',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                            height: 150,
                            width: 150,
                            child: Card(
                              color: Color(0XFFF1F7B5),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CircleAvatar(
                                      radius: 40,
                                      child: Image.asset(
                                          'assets/images/family-law.png')),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Family Law',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                            height: 150,
                            width: 150,
                            child: Card(
                              color: Color(0XFFFFCBCB),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CircleAvatar(
                                      radius: 35,
                                      child: Image.asset(
                                          'assets/images/emp_law.png')),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Employment',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'Law',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                            height: 150,
                            width: 150,
                            child: Card(
                              color: Color(0XFFE0E3F4),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CircleAvatar(
                                      radius: 40,
                                      child: Image.asset(
                                          'assets/images/property_law.png')),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Property Law',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 37.v),
                _buildThirty(context),
                SizedBox(height: 17.v),
                _buildThirtyFive(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMaterialSymbolsLightMenu,
        margin: EdgeInsets.only(
          left: 14.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: Selector<HomeProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.searchController,
        builder: (context, searchController, child) {
          return AppbarTitleSearchview(
            hintText: "msg_search_for_templates".tr,
            controller: searchController,
          );
        },
      ),
    );
  }

  /// Section Widget

  /// Section Widget
  Widget _buildThirtyOne(BuildContext context, String msg) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 9.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                msg,
                style: CustomTextStyles.titleMediumPoppinsErrorContainer,
              ),
              Padding(
                padding: EdgeInsets.only(
                    // top: 3.v,
                    // bottom: 7.v,
                    ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Template_page()));
                  },
                  child: Text(
                    "lbl_view_all".tr,
                    style: CustomTextStyles.labelLargePoppinsPrimary,
                  ),
                ),
              ),
            ],
          ),
          Text('Choose a Category'),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirty(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 9.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTrendingCases,
            height: 20.v,
            width: 151.h,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "lbl_view_all".tr,
              style: CustomTextStyles.labelLargePoppinsPrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyFive(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 37.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120.v,
                width: 220.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                  border: Border.all(
                    color: appTheme.gray5005b,
                    width: 1.h,
                  ),
                ),
              ),
              Container(
                height: 120.v,
                width: 220.h,
                margin: EdgeInsets.only(left: 38.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                  border: Border.all(
                    color: appTheme.gray5005b,
                    width: 1.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrameTwentyTwo(
    BuildContext context, {
    required String bailPetitionText,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle1148x48,
          height: 48.adaptSize,
          width: 48.adaptSize,
        ),
        SizedBox(height: 9.v),
        Text(
          bailPetitionText,
          style: CustomTextStyles.titleMediumPoppinsBlack90001Medium.copyWith(
            color: appTheme.black90001,
          ),
        ),
      ],
    );
  }
}
