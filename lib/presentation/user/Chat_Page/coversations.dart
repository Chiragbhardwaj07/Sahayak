import 'package:flutter/material.dart';
import 'package:sahayak/core/app_export.dart';
import 'package:sahayak/presentation/expert/expert_to_user_chat/expert_chat.dart';
import 'package:sahayak/presentation/expert/homepage_expert/models/pending_item_model.dart';
import 'package:sahayak/presentation/user/Chat_Page/User_to_expert_interface/models/expert_chat_item_widget.dart';
import 'package:sahayak/presentation/user/Chat_Page/User_to_expert_interface/provider/conversations_provider.dart';
import 'package:sahayak/presentation/user/Chat_Page/User_to_expert_interface/provider/user_expert_chat_provider.dart';
import 'package:sahayak/presentation/user/Chat_Page/ai_chat/ai_chat_page.dart';
import 'package:sahayak/theme/custom_text_style.dart';

class Conversations extends StatefulWidget {
  const Conversations({super.key});

  @override
  State<Conversations> createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Conversations',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              Text('AI Chat'),
              ListTile(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => AIChatScreen()));
                  }),
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    child: Text('AI'),
                  ),
                  title: Text(
                    'Sahayak',
                    style: CustomTextStyles.titleMediumMontserratBlack90001,
                  ),
                  // subtitle: Text(
                  //   PendingItemModelObj.time,
                  //   style: theme.textTheme.labelMedium,
                  // ),
                  trailing: Icon(Icons.arrow_forward_ios_outlined)),
              Text('Expert Chat'),
              SizedBox(
                height: 10,
              ),
              // Text(
              //   'No Expert Chat started yet.',
              //   style: TextStyle(fontSize: 10, color: Colors.black),
              // ),
              SizedBox(
                height: 900,
                child: Consumer<ConversationsProvider>(
                  builder: (context, provider, child) {
                    return ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: provider.ExpertChatModelObj.Expertlist.length,
                      itemBuilder: (context, index) {
                        PendingItemModel model =
                            provider.ExpertChatModelObj.Expertlist[index];
                        return UserToExpertChat(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.deepPurple,
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => AIChatScreen()));
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ))),
      ),
    );
  }
}
