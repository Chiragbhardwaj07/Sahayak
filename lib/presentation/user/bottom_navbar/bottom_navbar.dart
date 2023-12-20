import 'package:flutter/material.dart';
import 'package:sahayak/core/utils/size_utils.dart';
import 'package:sahayak/presentation/user/Chat_Page/ai_chat/ai_chat_page.dart';
import 'package:sahayak/presentation/user/Chat_Page/coversations.dart';
import 'package:sahayak/presentation/user/account_screen/account_screen.dart';
import 'package:sahayak/presentation/user/account_screen/government_id_form/government_id_screen.dart';
import 'package:sahayak/presentation/user/documents_page_screen/documents_page_screen.dart';
import 'package:sahayak/presentation/user/home_page/home_page.dart';
import 'package:sahayak/theme/theme_helper.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentindex = 0;
  List<Widget> widgetlist = [
    HomePage(),
    Conversations(),
    DocumentsPageScreen(),
    AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetlist[_currentindex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: Container(
          height: 80.v,
          decoration: BoxDecoration(
            color: appTheme.gray900,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(32.h),
            ),
            boxShadow: [
              BoxShadow(
                color: appTheme.black90001.withOpacity(0.15),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  -4,
                ),
              ),
            ],
          ),
          child: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.black87,
            currentIndex: _currentindex,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: Icon(Icons.chat),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: Icon(Icons.edit_document),
                label: 'Documents',
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: Icon(Icons.person_rounded),
                label: 'Account',
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
