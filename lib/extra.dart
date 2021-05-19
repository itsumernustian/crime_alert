import 'package:flutter/material.dart';
import 'myflexiableappbar.dart';

class Stats extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers:<Widget> [
        SliverAppBar(
          title: Text('Crimes in your area'),
          pinned: true,
          expandedHeight: 210.0,
          flexibleSpace: FlexibleSpaceBar(
            background: MyFlexiableAppBar(),
          ),
        ),
        // SliverList(delegate: SliverChildBuilderDelegate(
        //       (context,index)=>ListTile(
        //       title:Container(
        //         width: MediaQuery.of(context).size.width*1,
        //         height: MediaQuery.of(context).size.height*0.24,
        //         padding: EdgeInsets.fromLTRB(20,0, 6, 0),
        //         margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
        //         color: Colors.white70,
        //         child:  ListView(
        //           children: <Widget>[
        //             const ListTile(
        //               leading: Icon(Icons.warning_rounded , color: Colors.red,),
        //               title: Text(
        //                   'Accident',
        //                   style: TextStyle( color: Colors.red ,fontWeight: FontWeight.w900)
        //               ),
        //             ),
        //             Text(
        //                 'Worker fell and hurt his back due to ice freezing up on scaffolding',
        //                 style: TextStyle(fontSize: 16.0)
        //             ),
        //             Text(
        //                 ' \n 12 May 11:34 AM ⋅ Created by Mateo Stabio',
        //                 style: TextStyle(fontSize: 14.0 , color: Colors.grey)
        //             ),
        //
        //           ],
        //         ),
        //
        //       )
        //
        //   ),
        //   childCount:10,
        // ))

      ],
    );
  }

}
