import 'package:flutter/material.dart';
import 'package:whatsapp/views/chats_view.dart';
import 'package:whatsapp/views/status_view.dart';
import 'package:whatsapp/widgets/custom_list_view.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.black,
          bottom: TabBar(
            labelStyle: TextStyle(color: Colors.white),
            unselectedLabelStyle: TextStyle(color: Colors.white),
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5,
            tabs: [
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ChatsView(),
            StatusView(),
            Container(child: Text("Calls")),
          ],
        ),
      ),
    );
  }
}
