import 'package:flutter/material.dart';
import 'package:sahayak/widgets/document_view/document_view.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DocumentChatView(docName: 'hello', content: 'my name is khan'),
      ),
    );
  }
}
