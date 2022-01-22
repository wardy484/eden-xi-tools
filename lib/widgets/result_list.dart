import 'package:flutter/material.dart';

class ResultList extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final ScrollController controller;

  const ResultList({
    Key? key,
    required this.itemCount,
    required this.itemBuilder,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // color: Colors.white,
          ),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: itemCount,
              padding: EdgeInsets.symmetric(vertical: 16),
              itemBuilder: (context, index) => itemBuilder(context, index),
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
