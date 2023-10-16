import 'dart:html';

import 'package:flutter/material.dart';

class Homey extends StatelessWidget{


var arrname=['lovesh','Bilal','mehran','Ghansham','karan',"khatri","memon","raj","vinesh","mehaveer",'lovesh','Bilal','mehran','Ghansham','karan',"khatri","memon","raj","vinesh","mehaveer"];

@override
  Widget build(BuildContext context) {
    // TODO: implement build
  
  return Scaffold(
        appBar:AppBar(
          
title: Text("Go Daddy"),

backgroundColor: Colors.lightBlue,
titleTextStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w800),


        ),
        body: 
   ListView.separated(itemBuilder:(context,index){


return ListTile(
leading:Text('${index+1}') ,
title: Text(arrname[index]) ,
subtitle:Text('number') ,
trailing:Icon(Icons.add) ,
onTap: () {
  showDialog(context: context, builder: (context){

return Container(
height: 150,
width: 100,
child: AlertDialog(
title: Text("change name"),
content: TextField(
  onChanged: (value) {
    
  },


),

actions: [
TextButton(onPressed: (){Navigator.pop(context);}, child: Text("add"))],

),



);


  });
},


);


  } , separatorBuilder: (context,index)=>Divider(height: 5,thickness: 1), itemCount: arrname.length)
 


  );
  
   
   


  }




}

