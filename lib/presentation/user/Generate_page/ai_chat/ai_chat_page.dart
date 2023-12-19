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
  Widget build(Object context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const AIChatBuilder(),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                        padding:
                            const EdgeInsets.only(left: 8.0, top: 2, bottom: 2),
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
                                      fontFamily: 'Poppins', fontSize: 14),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.keyboard_voice),
                            )
                          ],
                        )),
                  ),
                ),
                MaterialButton(
                  shape: const CircleBorder(),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.attach_file, color: Colors.white),
                  ),
                  onPressed: () {},
                ),
                MaterialButton(
                  shape: const CircleBorder(),
                  color: Colors.purple,
                  onPressed: () {
                    chatMessageTextController.clear();
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.send, color: Colors.white),
                  ),
                )
              ],
            ))
      ],
    ));
  }
}

class AIChatBuilder extends StatelessWidget {
  const AIChatBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final aiChatProvider = Provider.of<AIChatProvider>(context);

    // return StreamBuilder(
    //     stream: aiChatProvider.webSocketChannel.stream,
    //     builder: (context, snapshot) {
    //       if (snapshot.hasData) {
    //         final messages = snapshot.data.document.reversed;
    //         List<TextMessageWidget> messageWidgets = [];
    //         for (var message in messages) {
    //           final msgText = message.data['text'];
    //           final msgSender = message.data['sender'];
    //           final currentUser = loggedInUser.displayName;

    //           final msgBubble = TextMessageWidget(
    //               msgText: msgText,
    //               msgSender: msgSender,
    //               user: currentUser == msgSender);
    //           messageWidgets.add(msgBubble);
    //         }

    //         return Expanded(
    //           child: ListView(
    //             reverse: true,
    //             padding:
    //                 const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
    //             children: messageWidgets,
    //           ),
    //         );
    //       } else {
    //         return const Center(
    //           child:
    //               CircularProgressIndicator(backgroundColor: Colors.deepPurple),
    //         );
    //       }
    //     });

    return ListView.builder(
      itemCount: aiChatProvider.messageHistory.length,
      itemBuilder: (context, index) {
        final message = json.decode(aiChatProvider.messageHistory[index]);

        if (message.type == AppConstants.formCreateType) {
          final fields =
              List<Map<String, dynamic>>.from(message['form_fields']);
          return JsonForm(fields: fields);
        } else if (message.type == AppConstants.documentViewType) {
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
    );
  }
}
