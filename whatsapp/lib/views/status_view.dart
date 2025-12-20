import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/status_tile_view.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StatusTileView(),
    );
  }
}