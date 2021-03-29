import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  final String url ;
  const SocialMedia({ this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        url,
        height: 16,
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
      ),
      padding: EdgeInsets.symmetric(vertical: 14,horizontal: 14),
    );
  }
}
