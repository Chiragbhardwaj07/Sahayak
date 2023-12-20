import 'package:flutter/material.dart';

class DocumentChatView extends StatelessWidget {
  final String docName;
  final String content;

  DocumentChatView({required this.docName, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: 230,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                  // width: double.infinity,
                  height: 150,
                  child: Image.asset(
                    'assets/images/img_non_disclosure.png',
                    fit: BoxFit.cover,
                  )),
              // NetworkImage(content),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.edit_document),
                    SizedBox(
                      width: 5,
                    ),
                    Text(docName),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text(
      //       docName,
      //       style: const TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //     const SizedBox(height: 8),
      //     Text(content, style: const TextStyle(fontSize: 16))
      //   ],
      // )
    );
  }
}
