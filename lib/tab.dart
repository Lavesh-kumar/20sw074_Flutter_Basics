import 'package:flutter/material.dart';

class Tbr extends StatelessWidget{

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Default TabBar Example'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Chats', icon: Icon(Icons.chat)),
                Tab(text: 'call',icon: Icon(Icons.call),),
                Tab(text: 'status',icon: Icon(Icons.star_outline_sharp),),
              ],
            ),
          ),

        )
    );
}
}