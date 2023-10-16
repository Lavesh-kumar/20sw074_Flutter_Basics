import 'dart:html';

import 'package:flutter/material.dart';

class loginform extends StatelessWidget{


@override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return  Scaffold(
        appBar:AppBar(
          
title: Text("Go Daddy"),

backgroundColor: Colors.lightBlue,
titleTextStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w800),


        ),

body:  Stack(
          children: [
            // Background Image
            Image.asset(
              'assets/regback.png', // Path to your asset
              fit: BoxFit.cover,
              height: double.infinity, // Cover the full available height
      width: double.infinity // Adjust the image's placement and size
              
            ),

Center(

child: Form(child: 


Column(

children: [

Container(
  

  
  child: Center(

child:Text("Login Form",

style: TextStyle(fontSize: 30,color: Colors.white),
) ,
),



),





Container(

width: 350,
margin: EdgeInsets.all(10),

child: 
TextFormField(
decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.white)),hintText: "Enter name",hintStyle: TextStyle(
          color: Colors.white, // Change the hint text color here
        )), 


),





),


//field 2



Container(

width: 350,
margin: EdgeInsets.all(10),

child: 
TextFormField(
decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.red)),hintText: "Enter Password",hintStyle: TextStyle(
          color: Colors.white, // Change the hint text color here
        ),) 


),





),

//field 3


Container(

width: 350,
margin: EdgeInsets.all(10),

child: 
TextFormField(
decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),hintText: "Enter Phone",hintStyle: TextStyle(
          color: Colors.white, // Change the hint text color here
        )) 


),





),






//button

ElevatedButton(onPressed: (){

Navigator.push(
  
  context, MaterialPageRoute(builder: (context) => loginform())



);


}, child: Text("Submit form"),

 style: ElevatedButton.styleFrom(
    padding: EdgeInsets.all(12.0),
     // Set a specific width, the height will be determined by the button content
  )
 
 
 )



],

)

),


)
          ]
)

    );









  }

}