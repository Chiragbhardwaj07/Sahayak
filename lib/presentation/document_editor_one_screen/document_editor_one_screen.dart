import 'models/document_editor_one_model.dart';
import 'package:chirag_s_application/core/app_export.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:chirag_s_application/widgets/app_bar/appbar_title.dart';
import 'package:chirag_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/document_editor_one_provider.dart';

class DocumentEditorOneScreen extends StatefulWidget {
  const DocumentEditorOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DocumentEditorOneScreenState createState() => DocumentEditorOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DocumentEditorOneProvider(),
      child: DocumentEditorOneScreen(),
    );
  }
}

class DocumentEditorOneScreenState extends State<DocumentEditorOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 73.h,
            vertical: 47.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_sent_for_review".tr,
                style: CustomTextStyles.titleMediumMontserratBlack90001,
              ),
              SizedBox(height: 1.v),
              Text(
                "msg_date_09_10_2022".tr,
                style: CustomTextStyles.labelLargeSecondaryContainer,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.fromLTRB(8.h, 7.v, 341.h, 4.v),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_document_status".tr,
      ),
    );
  }
}
