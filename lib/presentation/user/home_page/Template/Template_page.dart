import 'package:flutter/material.dart';
import 'package:sahayak/core/app_export.dart';
import 'package:sahayak/presentation/user/home_page/Template/models/template_item_model.dart';
import 'package:sahayak/presentation/user/home_page/Template/provider/template_provider.dart';
import 'package:sahayak/presentation/user/home_page/Template/widget/template_item_widget.dart';

class Template_page extends StatefulWidget {
  const Template_page({super.key});

  @override
  State<Template_page> createState() => _Template_pageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TemplateProvider(),
      child: Template_page(),
    );
  }
}

class _Template_pageState extends State<Template_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: Row(
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
                  'Templates',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 900,
            child: Consumer<TemplateProvider>(
              builder: (context, provider, child) {
                return ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: provider.templateModelObj.templateList.length,
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
        ],
      ),
    );
  }
}
