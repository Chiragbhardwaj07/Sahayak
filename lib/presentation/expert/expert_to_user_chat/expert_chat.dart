// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sahayak/core/constants/constants.dart';
import 'package:sahayak/presentation/expert/expert_to_user_chat/provider/expert_chat_provider.dart';
import 'package:sahayak/presentation/user/Chat_Page/ai_chat/provider/ai_chat_provider.dart';
import 'package:sahayak/widgets/chat_widgets/messages/text_message.dart';
import 'package:sahayak/widgets/document_view/document_view.dart';
import 'package:sahayak/widgets/json_form/json_form.dart';

class ExpertChatScreen extends StatefulWidget {
  String ClientName;
  ExpertChatScreen({super.key, required this.ClientName});

  @override
  _ExpertChatScreenState createState() => _ExpertChatScreenState();
}

class _ExpertChatScreenState extends State<ExpertChatScreen> {
  final chatMessageTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final expertChatProvider = Provider.of<ExpertChatProvider>(context);

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[300],
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios)),
            title: Column(
              children: [
                Text(widget.ClientName),
                // Text(expertChatProvider.subtitle,style: TextStyle(fontSize: 8),),
              ],
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
            ],
          ),
          body: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Card(
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'This chat is end-to-end encrypted',
                      style: TextStyle(fontSize: 10, color: Colors.black87),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: const expertChatBuilder()),
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: const BoxDecoration(),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          elevation: 5,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, top: 2, bottom: 2),
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        chatMessageTextController.clear();
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Icon(Icons.keyboard_voice,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      onChanged: (value) {},
                                      controller: chatMessageTextController,
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                        hintText: 'Type your message here...',
                                        hintStyle: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  // IconButton(
                                  //   onPressed: () {},
                                  //   icon: const Icon(Icons.attach_file),
                                  // ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        chatMessageTextController.clear();
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Icon(Icons.send,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ))
            ],
          )),
    );
  }
}

class expertChatBuilder extends StatelessWidget {
  const expertChatBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final expertChatProvider = Provider.of<ExpertChatProvider>(context);

    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 510,
        child: ListView.builder(
          itemCount: expertChatProvider.messageHistory.length,
          itemBuilder: (context, index) {
            final message = expertChatProvider.messageHistory[index];

            if (message['type'] == AppConstants.formCreateType) {
              final fields =
                  List<Map<String, dynamic>>.from(message['form_fields']);
              return JsonForm(fields: fields);
            } else if (message['type'] == AppConstants.documentViewType) {
              return DocumentChatView(
                  docName: message['document_title'],
                  content: message['document_content']);
            } else {
              return TextMessageWidget(
                  msgText: message['content'],
                  msgSender: message['sender'],
                  user: message['is_from_sender']);
            }
          },
        ),
      ),
    );
  }
}
