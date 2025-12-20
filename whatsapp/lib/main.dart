import 'package:flutter/material.dart';
import 'package:whatsapp/views/my_tab_bar.dart';
import 'package:whatsapp/widgets/custom_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.white),
            ),
          ],
        ),
        body: Container(child: MyTabBar()),
        // body: Column(
        //   children: [
           
        //   ],
        // ),
      ),
    );
  }
}
