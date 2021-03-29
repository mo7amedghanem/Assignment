import 'package:assignment/widgets/custom_drawer.dart';
import 'package:assignment/widgets/headline_widgets.dart';
import 'package:assignment/widgets/social_media_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  double padValue = 0 ;

  bool showButtons = true ;

  _updatePadding (double value) {
    setState(() {
      padValue = value ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: CustomDrawer(),
      endDrawerEnableOpenDragGesture: false,
      body: Container(
        child: Stack(
          children: [
            // Top right icon
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32,horizontal: 16),
              child: Align(
                alignment: Alignment.topRight,
                child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(CupertinoIcons.bag_fill,size: 25,color: Colors.blue,),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text('2',style: TextStyle(color: Colors.white,fontSize: 10,),),
                      ),
                    ]
                ),
              ),
            ),
            // Top left icon
            AnimatedSwitcher(
                duration: Duration(milliseconds: 500),
                switchInCurve: Curves.easeIn,
                switchOutCurve: Curves.easeIn,
                child: showButtons ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32,horizontal: 16),
                  child: Icon(Icons.backspace),
                ) : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32,horizontal: 16),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                        CupertinoIcons.arrow_left
                    ),
                  ),
                )
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                HeadlineWidgets(
                  isTrue: showButtons,
                  value: padValue,
                ),
                SizedBox(height: showButtons ? 0 : 32),

                // Bottom Buttons and the information of the shirt


                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AnimatedSwitcher(
                        duration: Duration(milliseconds: 500),
                        switchInCurve: Curves.easeIn,
                        switchOutCurve: Curves.easeIn,
                        child: showButtons ?
                        Text('3 of 37') : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OutlineButton(
                                  borderSide: BorderSide(width: 1),
                                  disabledBorderColor: Colors.black87,
                                  highlightedBorderColor: Colors.black87,
                                  padding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
                                  onPressed: (){
                                    _updatePadding(20);
                                    _scaffoldKey.currentState.openEndDrawer();
                                  }, child: Row(
                                children: [
                                  Text('SELECT A SIZE',style: TextStyle(fontSize: 10,fontFamily: 'Raleway',fontWeight: FontWeight.bold),),
                                  SizedBox(width: 8,),
                                  Icon(Icons.arrow_forward_ios,size: 10,color: Colors.grey,)
                                ],
                              )
                              ),
                              OutlineButton(
                                  borderSide: BorderSide(width: 1),
                                  disabledBorderColor: Colors.black87,
                                  highlightedBorderColor: Colors.black87,
                                  padding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
                                  onPressed: (){
                                    _scaffoldKey.currentState.openEndDrawer();
                                  }, child: Row(
                                children: [
                                  Text('SELECT  CORAL',style: TextStyle(fontSize: 10,fontFamily: 'Raleway',fontWeight: FontWeight.bold),),
                                  SizedBox(width: 8,),
                                  Icon(Icons.arrow_forward_ios,size: 10,color: Colors.grey,)
                                ],
                              )
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: SizedBox(
                            width: double.infinity,
                            child: FlatButton(
                              hoverColor: Colors.blue,
                              highlightColor: Colors.blue,
                              color: Colors.black,
                              onPressed: (){
                                setState((){
                                  showButtons =! showButtons ;
                                });
                              },
                              child: Text('ADD TO CART',style: TextStyle(color: Colors.white,fontFamily: 'Raleway',fontWeight: FontWeight.bold,fontSize: 10),),
                              padding: EdgeInsets.symmetric(vertical: 16),)),
                      ),
                      SizedBox(height: 16,),
                      AnimatedSwitcher(
                          duration: Duration(milliseconds: 500),
                          switchInCurve: Curves.fastLinearToSlowEaseIn,
                          switchOutCurve: Curves.fastLinearToSlowEaseIn,
                          child: showButtons ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: SizedBox(
                                width: double.infinity,
                                child: OutlineButton(
                                  hoverColor: Colors.blue,
                                  highlightColor: Colors.blue,
                                  color: Colors.black,
                                  borderSide: BorderSide(width: 1),
                                  onPressed: (){},
                                  child: Text('REMOVE FROM CLOSET',style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold,fontSize: 10),),
                                  padding: EdgeInsets.symmetric(vertical: 16),)
                            ),
                          ): Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SocialMedia(url: 'images/facebook.png'),
                              SocialMedia(url: 'images/twitter.png'),
                              SocialMedia(url: 'images/instagram.png'),
                              SocialMedia(url: 'images/message.png'),
                            ],
                          )
                      ),
                      SizedBox(height: 16,),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}