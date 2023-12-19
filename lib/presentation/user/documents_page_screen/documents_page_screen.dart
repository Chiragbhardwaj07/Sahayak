import 'package:sahayak/core/app_export.dart';
import 'package:sahayak/presentation/user/home_page/home_page.dart';
import 'package:sahayak/widgets/app_bar/appbar_leading_image.dart';
import 'package:sahayak/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:sahayak/widgets/app_bar/custom_app_bar.dart';
import 'package:sahayak/widgets/custom_bottom_bar.dart';

import '../documents_page_screen/widgets/formlist_item_widget.dart';
import '../documents_page_screen/widgets/goodstransportorder_item_widget.dart';
import '../documents_page_screen/widgets/rentagreementlist_item_widget.dart';
import 'models/formlist_item_model.dart';
import 'models/goodstransportorder_item_model.dart';
import 'models/rentagreementlist_item_model.dart';
import 'package:flutter/material.dart';
import 'provider/documents_page_provider.dart';

class DocumentsPageScreen extends StatefulWidget {
  const DocumentsPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DocumentsPageScreenState createState() => DocumentsPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DocumentsPageProvider(),
      child: DocumentsPageScreen(),
    );
  }
}

class DocumentsPageScreenState extends State<DocumentsPageScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  final FocusNode searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      appBar: _buildAppBar(context),
      body: ListView(
        children: [
          _buildFiltersChips(context),
          SizedBox(height: 29.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text(
                "lbl_drafts2".tr,
                style: CustomTextStyles.titleMediumMontserratSecondaryContainer,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          _buildRentAgreementList(context),
          SizedBox(height: 31.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text(
                "msg_reviewed_and_delivered".tr,
                style: CustomTextStyles.titleMediumMontserratSecondaryContainer,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          _buildFormList(context),
          SizedBox(height: 33.v),
          _buildDocumentsPageStack(context),
          SizedBox(height: 5.v),
          SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 41.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgRectangle1148x48,
        margin: EdgeInsets.only(
          left: 17.h,
          top: 14.v,
          bottom: 18.v,
        ),
      ),
      title: Selector<DocumentsPageProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.searchController,
        builder: (context, searchController, child) {
          return Focus(
            canRequestFocus: false,
            child: AppbarTitleSearchviewOne(
              focusnode: searchFocusNode,
              margin: EdgeInsets.only(left: 20.h),
              hintText: "msg_search_for_templates".tr,
              controller: searchController,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFiltersChips(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 44.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 49.h,
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.fillIndigoA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Text(
                "lbl_all".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Container(
              width: 75.h,
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Text(
                "lbl_drafts".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Container(
              width: 94.h,
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Text(
                "lbl_reviewed".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Container(
              width: 94.h,
              margin: EdgeInsets.only(left: 13.h),
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Text(
                "lbl_returned".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRentAgreementList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 20.h,
      ),
      child: Consumer<DocumentsPageProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0.v),
                child: SizedBox(
                  width: 354.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.gray400,
                  ),
                ),
              );
            },
            itemCount:
                provider.documentsPageModelObj.rentagreementlistItemList.length,
            itemBuilder: (context, index) {
              RentagreementlistItemModel model = provider
                  .documentsPageModelObj.rentagreementlistItemList[index];
              return RentagreementlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFormList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Consumer<DocumentsPageProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 18.v,
              );
            },
            itemCount: provider.documentsPageModelObj.formlistItemList.length,
            itemBuilder: (context, index) {
              FormlistItemModel model =
                  provider.documentsPageModelObj.formlistItemList[index];
              return FormlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDocumentsPageStack(BuildContext context) {
    return SizedBox(
      height: 151.v,
      width: 359.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 25.v),
              child: Consumer<DocumentsPageProvider>(
                builder: (context, provider, child) {
                  return ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.5.v),
                        child: SizedBox(
                          width: 358.h,
                          child: Divider(
                            height: 1.v,
                            thickness: 1.v,
                            color: theme.colorScheme.primaryContainer
                                .withOpacity(1),
                          ),
                        ),
                      );
                    },
                    itemCount: provider.documentsPageModelObj
                        .goodstransportorderItemList.length,
                    itemBuilder: (context, index) {
                      GoodstransportorderItemModel model = provider
                          .documentsPageModelObj
                          .goodstransportorderItemList[index];
                      return GoodstransportorderItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                "msg_rejected_returned".tr,
                style: CustomTextStyles.titleMediumMontserratSecondaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Generate:
        return "/";
      case BottomBarEnum.Documents:
        return "/";
      case BottomBarEnum.Account:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
