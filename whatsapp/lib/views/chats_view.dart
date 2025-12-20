import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/custom_list_view.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomListView(),
            CustomListView(),
            CustomListView(),
            CustomListView(),
            CustomListView(),
            CustomListView(),
            CustomListView(),
            CustomListView(),
            CustomListView(),
            CustomListView(),
            CustomListView(),
            CustomListView(),
            CustomListView(),
            CustomListView(),
            CustomListView(),
          ],
        ),
      ),
    );
  }
}
