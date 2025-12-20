import 'package:flutter/material.dart';
import 'data/chess_colors.dart';

class ChessView extends StatelessWidget {
  const ChessView({super.key});

  @override
  Widget build(BuildContext context) {
    var colors = chessColors;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Chess")),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: colors
                    .map(
                      (color) => Row(
                        mainAxisSize:
                            MainAxisSize.min,
                        children: (color["list"] as List<Color>)
                            .map(
                              (item) => Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: item,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
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
        ),
      ),
    );
  }
}
