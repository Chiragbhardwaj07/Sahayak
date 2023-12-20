// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
      backgroundColor: Colors.black,
      child: ListView(padding: EdgeInsets.fromLTRB(10, 20, 5, 10), children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Previous AI Chats',
              style: TextStyle(color: Colors.grey[200]),
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                size: 40,
                color: Colors.white,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text(
                'NDA',
              ),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                size: 40,
                color: Colors.white,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text(
                'Rent Agreement',
              ),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                size: 40,
                color: Colors.white,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text(
                'Affidavit',
              ),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {},
            ),
            Divider(),
          ],
        )
      ]),
    ));
  }
}
