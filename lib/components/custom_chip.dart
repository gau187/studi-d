import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          color: Color(0xffF7F8FA),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Color(0xffCED3DE))),
      padding: EdgeInsets.all(8),
      child: Text(
        text,
        style: TextStyle(
            color: Color(0xff5A6B87),
            fontSize: 14,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
