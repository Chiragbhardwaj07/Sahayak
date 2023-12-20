import 'package:flutter/material.dart';
import 'package:sahayak/presentation/expert/homepage_expert/models/expert_chat_model.dart';
import 'package:sahayak/presentation/user/Chat_Page/User_to_expert_interface/models/user_to_expert_chat_model.dart';

class ConversationsProvider extends ChangeNotifier {
  UserToExpertChatModel ExpertChatModelObj = UserToExpertChatModel();
}
