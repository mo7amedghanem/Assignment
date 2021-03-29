import 'package:assignment/widgets/custom_circle.dart';
import 'package:flutter/material.dart';

class SelectSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('XSMALL',style: TextStyle(color: Colors.white,fontFamily: 'Raleway',fontWeight: FontWeight.bold),),
              CustomCircle(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(color: Colors.white,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('SMALL',style: TextStyle(color: Colors.white,fontFamily: 'Raleway',fontWeight: FontWeight.bold),),
              CustomCircle(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(color: Colors.white,),
        ),                  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('MEDIUM',style: TextStyle(color: Colors.white,fontFamily: 'Raleway',fontWeight: FontWeight.bold),),
              CustomCircle(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(color: Colors.white,),
        ),                  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('LARGE',style: TextStyle(color: Colors.white,fontFamily: 'Raleway',fontWeight: FontWeight.bold),),
              CustomCircle(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(color: Colors.white,),
        ),                  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('XLARGE',style: TextStyle(color: Colors.white,fontFamily: 'Raleway',fontWeight: FontWeight.bold),),
              CustomCircle(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(color: Colors.white,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('XXLARGE',style: TextStyle(color: Colors.white,fontFamily: 'Raleway',fontWeight: FontWeight.bold),),
              CustomCircle(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(color: Colors.white,),
        ),
      ],
    );
  }
}
