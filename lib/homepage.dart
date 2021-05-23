import 'package:flutter/material.dart';
import 'myflexiableappbar.dart';
import 'extra.dart';
import 'myAppBar.dart';
// class Data {
//   const Data({this.category, this.icon,this.textData, this.pubDate});
//   final String category;
//   final String textData;
//   final String pubDate;
//   final IconData icon;
// }
// const List<Data> data= const<Data>[
//   const Data(category: 'Accident',icon:Icons.warning_rounded,textData:'Worker fell and hurt his back due to ice freezing up on scaffolding',pubDate: '\n 12 May 11:34 AM ⋅ Created by Mateo Stabio'),
//   const Data(category: 'Accident',icon:Icons.power_off_sharp, textData:'Worker fell and hurt his back due to ice freezing up on scaffolding',pubDate: '\n 12 May 11:34 AM ⋅ Created by Mateo Stabio'),
//   const Data(category: 'Accident',icon:Icons.warning_rounded,textData:'Worker fell and hurt his back due to ice freezing up on scaffolding',pubDate: '\n 12 May 11:34 AM ⋅ Created by Mateo Stabio'),
//   const Data(category: 'Accident',icon:Icons.power_off_sharp,textData:'Worker fell and hurt his back due to ice freezing up on scaffolding',pubDate: '\n 12 May 11:34 AM ⋅ Created by Mateo Stabio'),
//   const Data(category: 'Accident',icon:Icons.warning_rounded,textData:'Worker fell and hurt his back due to ice freezing up on scaffolding',pubDate: '\n 12 May 11:34 AM ⋅ Created by Mateo Stabio'),
//
//
// ];
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom:TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home_outlined)),
              Tab(icon: Icon(Icons.ondemand_video_outlined)),
              Tab(icon: Icon(Icons.post_add_outlined)),
              Tab(icon: Icon(Icons.map_outlined)),
              Tab(icon: Icon(Icons.notifications_none_outlined)),

            ],
          ),
        ),
        body: TabBarView(
          children: [
            Home(),
            MyAppBar(),
            MyAppBar(),
            MyAppBar(),
            MyAppBar(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:null,
          tooltip: 'SOS',
          child: Icon(Icons.contact_phone_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(accountName: Text('Muhammad Umer Farooq'), accountEmail: Text('umerfarooq1174@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.grey, radius: 110.0,
                  child:CircleAvatar(
                    radius: 32.0,
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                    backgroundColor: Colors.white30,

                  ),
                ),),
              ListTile(
                leading: Icon(Icons.home  , color: Colors.redAccent,),
                title: Text('Home'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              Divider( height: 0.1,),
              ListTile(
                leading: Icon(Icons.settings  , color: Colors.redAccent,),
                title: Text('Settings'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts  , color: Colors.redAccent,),
                title: Text('Contact'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_phone  , color: Colors.redAccent,),
                title: Text('SOS'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.post_add_outlined , color: Colors.redAccent,),
                title: Text('My Posts'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.graphic_eq_outlined , color: Colors.redAccent,),
                title: Text('Stats'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Stats()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.redAccent,),
                title: Text('Logout'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),


      ),
    );
  }
}

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }

}
class _HomeState extends State<Home>
{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context,index){
        return Container(
          padding: EdgeInsets.fromLTRB(6,6, 6, 10),
          margin: EdgeInsets.fromLTRB(2, 2, 2, 10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
            boxShadow: [
              new BoxShadow(
                color: Colors.white12,
                offset: new Offset(10.0, 10.0),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          // color: Colors.white70,
          child:  Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                    maxRadius: 30,
                    backgroundColor: Colors.lightBlue,
                  ),
                  Text('     '+
                      'Username' +
                      "\n"
                      +'     '+
                      'Today at 9:21 pm', softWrap: true,),
                  // Text('Today at 9:21 pm' ),
                ],
              ),

              ListTile(
                leading: Icon(Icons.warning_amber_outlined ,color: Colors.red,),
                title: Text('Blasting',softWrap: true, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red ),),
              ),
              Text("Israeli army unleashes air strikes ‘targeting tunnel system’ as Bidden backs ceasefire"),
              Image(image: AssetImage('assets/images/attack.jpg'),height: 250,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.thumb_up_alt_outlined , color: Colors.grey,),
                  Icon(Icons.comment_bank_outlined,color: Colors.grey,),
                  Icon(Icons.share_outlined,color: Colors.grey,),
                ],
              ),

            ],
          ),

        );
      });
  }

}