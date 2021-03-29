import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeadlineWidgets extends StatelessWidget {
  final bool isTrue ;
  final double value ;

  const HeadlineWidgets({ this.isTrue,this.value});
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        AnimatedPadding(
          padding: EdgeInsets.only(bottom: value),
          duration: const Duration(seconds: 1),
          curve: Curves.easeIn,
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'images/hanger.png',
                  height: 30,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 4,),
              Text('My Closet',style: TextStyle(fontSize: 10,color: Colors.blue,fontFamily: 'Raleway',fontWeight: FontWeight.bold),),
              SizedBox(height: 32,),
              Text('aero new york ath-detp graphic t',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 4,),
              Text('sweet coral',style: TextStyle(fontSize: 10),),
              SizedBox(height: 16,),
              AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: isTrue ? 20 : 30,
                  child: Text(
                    '\$10.00',
                    style: TextStyle(
                        fontSize: isTrue ?
                        14 :
                        20,
                        fontWeight: FontWeight.bold),)),
              Text('\$24.50',style: TextStyle(fontSize: 10))
            ],
          ),
        ),
        SizedBox(height: isTrue ? 8 : 0,),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          width: isTrue ? 250 : 100,
          height: isTrue ? 250 : 100,
          child: Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'images/shirt.png',
              height: isTrue ? 220 : 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: isTrue ? 0 : 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: AnimatedSwitcher(
              duration: Duration(seconds: 1),
              child: isTrue ? Container() : Text(''
                  'if you are goin to buy this you have to pay if you are goin to buy this you have to pay'
                  'if you are goin to buy this you have to pay if you are '
                  '\n'
                  '\n Heal Height 0.5"'
                  '\n Height: 4"'
                  '\n Style 8323. Imported',style: TextStyle(fontSize: 10),)
          ),
        ),
      ],
    );
  }
}
