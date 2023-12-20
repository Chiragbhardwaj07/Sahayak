import 'package:sahayak/core/utils/image_constant.dart';
import 'package:sahayak/core/utils/size_utils.dart';
import 'package:sahayak/presentation/expert/expert_to_user_chat/expert_chat.dart';
import 'package:sahayak/presentation/user/home_page/Template/models/template_item_model.dart';
import 'package:sahayak/theme/custom_text_style.dart';
import 'package:sahayak/theme/theme_helper.dart';
import 'package:sahayak/widgets/custom_image_view.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TemplateItemModelItemWidget extends StatelessWidget {
  TemplateItemModelItemWidget(
    this.TemplateItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TemplateItemModel TemplateItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ExpertChatScreen(
                        ClientName: TemplateItemModelObj.docType),
                  ));
            },
            child: Card(
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 24,
                    child: Image.asset(
                      TemplateItemModelObj.img,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              TemplateItemModelObj.docType,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                            Text(TemplateItemModelObj.DocDesc)
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
