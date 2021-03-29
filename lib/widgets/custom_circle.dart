import 'package:flutter/material.dart';

class CustomCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(width: 2,color: Colors.white),
          borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
