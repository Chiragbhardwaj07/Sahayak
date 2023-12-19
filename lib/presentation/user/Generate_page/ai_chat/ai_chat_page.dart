// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sahayak/core/constants/constants.dart';
import 'package:sahayak/presentation/user/Generate_page/ai_chat/provider/ai_chat_provider.dart';
import 'package:sahayak/widgets/chat_widgets/messages/text_message.dart';
import 'package:sahayak/widgets/document_view/document_view.dart';
import 'package:sahayak/widgets/json_form/json_form.dart';

class AIChatScreen extends StatefulWidget {
  const AIChatScreen({super.key});

  @override
  _AIChatScreenState createState() => _AIChatScreenState();
}

class _AIChatScreenState extends State<AIChatScreen> {
  final chatMessageTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final aiChatProvider = Provider.of<AIChatProvider>(context);

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
                Text(aiChatProvider.title),
                // Text(aiChatProvider.subtitle,style: TextStyle(fontSize: 8),),
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
                    child: const AIChatBuilder()),
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
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.attach_file),
                                  ),
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

class AIChatBuilder extends StatelessWidget {
  const AIChatBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final aiChatProvider = Provider.of<AIChatProvider>(context);

    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 510,
        child: ListView.builder(
          itemCount: aiChatProvider.messageHistory.length,
          itemBuilder: (context, index) {
            final message = aiChatProvider.messageHistory[index];

            if (message['type'] == AppConstants.formCreateType) {
              final fields =
                  List<Map<String, dynamic>>.from(message['form_fields']);
              return JsonForm(fields: fields);
            } else if (message['type'] == AppConstants.documentViewType) {
              return DocumentChatView(
                  title: message['document_title'],
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
