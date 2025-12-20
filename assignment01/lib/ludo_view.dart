import 'package:flutter/material.dart';
import 'data/ludo_colors.dart';

class LudoView extends StatelessWidget {
  const LudoView({super.key});

  @override
  Widget build(BuildContext context) {
    var colors = ludoColors;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Chess")),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: colors
                .map(
                  (color) => Row(
                    children: (color["list"] as List<Color>)
                        .map(
                          (item) => Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: item,
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
