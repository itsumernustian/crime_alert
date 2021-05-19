import 'package:flutter/material.dart';
class MyAppBar extends StatelessWidget {

  final double barHeight = 66.0;

  const MyAppBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Container(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Crime Alert',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 20.0
              ),
            ),

          ),),

          Container(child: Padding(
            padding: EdgeInsets.fromLTRB(30, 16, 0, 16),
            child: Icon(
              Icons.ondemand_video_outlined, color: Colors.white,),

          ),),

          Container(child: Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
            child: Icon(
              Icons.notifications_none_outlined, color: Colors.white,),

          ),),

        ],
      ),
    );
  }
}