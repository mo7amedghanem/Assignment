import 'package:assignment/widgets/select_a_size_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {

  final Widget drawerList ;

  const CustomDrawer({this.drawerList});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: Drawer(
        elevation: 4,
        child: Container(
          color: Colors.black,
          child: ListView(
            children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 32,left: 32),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.backspace,color: Colors.white,),
                          Center(
                            child: Text(
                              'SELECT A SIZE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                          SizedBox(width: 32,)
                        ],
                      ),
                   ),
              SizedBox(height: 16),
              Divider(color: Colors.white,),
              SelectSize()
            ],
          ),
        ),
      ),
    );
  }
}
