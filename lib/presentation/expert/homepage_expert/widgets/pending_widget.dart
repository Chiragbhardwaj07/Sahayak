import 'package:sahayak/core/utils/image_constant.dart';
import 'package:sahayak/core/utils/size_utils.dart';
import 'package:sahayak/presentation/expert/expert_to_user_chat/expert_chat.dart';
import 'package:sahayak/presentation/expert/homepage_expert/models/pending_item_model.dart';
import 'package:sahayak/theme/custom_text_style.dart';
import 'package:sahayak/theme/theme_helper.dart';
import 'package:sahayak/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PendingItemWidget extends StatelessWidget {
  PendingItemWidget(
    this.PendingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PendingItemModel PendingItemModelObj;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => ExpertChatScreen(
                      ClientName: PendingItemModelObj.client_name,
                    )));
      }),
      leading: CircleAvatar(
        backgroundColor: Colors.grey[300],
        child: Icon(
          Icons.person,
          color: Colors.black,
        ),
      ),
      title: Text(
        PendingItemModelObj.client_name,
        style: CustomTextStyles.titleMediumMontserratBlack90001,
      ),
      // subtitle: Text(
      //   PendingItemModelObj.time,
      //   style: theme.textTheme.labelMedium,
      // ),
      trailing: Text(
        PendingItemModelObj.time,
        style: theme.textTheme.labelMedium,
      ),
    );
  }
}
