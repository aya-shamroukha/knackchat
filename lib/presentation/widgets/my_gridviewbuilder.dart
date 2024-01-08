import 'package:flutter/material.dart';

class MyGridViewBuilder extends StatelessWidget {
  final int itemcount;
  final dynamic itembuilder;
  const MyGridViewBuilder({
    super.key,
    required this.itemcount,
    required this.itembuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
      
        itemCount: itemcount,
        scrollDirection: Axis.horizontal,
        itemBuilder: itembuilder
      ),
    );
  }
}
