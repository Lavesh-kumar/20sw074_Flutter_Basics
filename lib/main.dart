import 'dart:math';
import 'package:flutter/material.dart';
import 'tab.dart';
import 'contacts.dart';
import 'loginform.dart';


void main(){
  
  // Entry point of flutter app 
  //by creating Godady object . it runs build method which returns the widget
  //we can drictly create widget in the runapp. but this is not Good approach . craete the class is managble 
   runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
home: GodadyApp(),

   ));
}

//first cllass

class FirstButton extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    

return ElevatedButton(
            onPressed: () {
              // This function will be called when the button is pressed
              showDialog(context: context, builder: (context){

          return Container(

                   height: 50,
                   width: 50,
                   child: AlertDialog(

title: Text("are you sure ?"),
content: TextField(

  decoration:InputDecoration(

    hintText: "Type here"
  )  ,
onChanged: (value) {
  print(value);
},

),
actions: [

  TextButton(onPressed:(){Navigator.pop(context);}, child: Text("ok")),
  
TextButton(onPressed:(){Navigator.pop(context);}, child: Text("No")),
  


],

                   ),


);


              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Set the button's background color
               // Set the button's minimum size
            ),
            
            child: Text(
              'Click Me', // The text displayed on the button
              style: TextStyle(
                color: Colors.white, // Set the text color
                fontSize: 13, // Set the text font size
              ),
            )
);
    
 




  }
}





//2nd main class

class GodadyApp extends StatelessWidget{

@override
Widget build(BuildContext context){

return MaterialApp(
debugShowCheckedModeBanner: false,
 title: "applications",
 
     
      home:Scaffold(
        appBar:AppBar(
          
title: Text("Go Daddy"),

backgroundColor: Colors.lightBlue,
titleTextStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w800),      

        ),
body: Material(
  //in body we are writing the widget . we can also can craete object of call returns the widget inside the buid functions
color: Colors.white,

 child:Center(

 child:Container(


alignment: Alignment.center,
padding: EdgeInsets.all(10),
color:Colors.white,
width: 350,
height: 550,
child: Column(

  children: [
Row(

children: [
 


Expanded(child:
Container(
margin: EdgeInsets.only(left: 5),
alignment: Alignment.center,
color:Colors.orange,

width: 100,
height: 50,

child: Center(
child: Center(child: Icon(Icons.home_filled
,color: Colors.white,
size: 40,
),)

),











) )

,

Expanded(child:Container(
margin: EdgeInsets.only(left: 5),
alignment: Alignment.center,
color:Colors.red,
width: 100,
height: 50,
child: Center(
child: Center(child: Icon(Icons.add
,color: Colors.white,
size: 40,
),)

),







)
)
,

Expanded(child:Container(
margin: EdgeInsets.only(left: 5),
alignment: Alignment.center,
color:Colors.lightBlue,
width: 100,
height: 50,
child: Center(
child: Center(child: Icon(Icons.add_call
,color: Colors.white,
size: 40,
),)

),

)
 )



],


),


Container(
margin: EdgeInsets.only(top: 20),
alignment: Alignment.center,
color:Colors.red,
width: 350,
height: 50,

child: Center(


child:Row(
children: [

Expanded(child: ElevatedButton(onPressed: (){

Navigator.push(
  
  context, MaterialPageRoute(builder: (context) => Homey())



);


}, child: Text("show "),

 style: ElevatedButton.styleFrom(
    primary: Colors.blue,
    onPrimary: Colors.white,
    padding: EdgeInsets.all(12.0),
     // Set a specific width, the height will be determined by the button content
  )
 
 
 ),
),


//child2

Expanded(child: ElevatedButton(
  
onPressed: (){




Navigator.push(
  
  context, MaterialPageRoute(builder: (context) => Tbr())



);


}, child: Text("Tab Bar"),


style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black87)) ,),
),




//child 3

Expanded(child: ElevatedButton(onPressed: (){

Navigator.push(
  
  context, MaterialPageRoute(builder: (context) => loginform())



);


}, child: Text("form"),

 style: ElevatedButton.styleFrom(
    padding: EdgeInsets.all(12.0),
     // Set a specific width, the height will be determined by the button content
  )
 
 
 ),
),






],










)

,
  
),

















)


,


Container(
margin: EdgeInsets.only(top: 20),
alignment: Alignment.center,
color:Colors.lime,
width: 350,
height: 120,

child: Container(
height: 40,
//From Google

 width: 100,


child: FirstButton(),


//  child: Image.network(
//             'https://i.pinimg.com/474x/30/5c/5a/305c5a457807ba421ed67495c93198d3--cover-pics-cover-art.jpg', // URL of the image
//             width: 200, // Set the width of the image
//             height: 200, // Set the height of the image
//             fit: BoxFit.cover, // How the image should be inscribed into the space
//           ),

//Locally
//child:Image.asset('assets/images/pic.png')

),


)
,
Container(

  
  padding:EdgeInsets.all(10),
margin: EdgeInsets.only(top: 20),
alignment: Alignment.center,

width: 350,
height: 200,
decoration: BoxDecoration(
  color: Color.fromARGB(255, 160, 231, 161),
    borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)) // Adjust the radius value as needed
    /* Other decoration properties can be added here */
  ),

child:  Row(
children: [

Expanded(child:Container(
margin: EdgeInsets.all( 15),
alignment: Alignment.center,

width: 120,
height: 160,
decoration: BoxDecoration(
  color: Colors.red,
    borderRadius: BorderRadius.all(Radius.circular(10)) // Adjust the radius value as needed
    /* Other decoration properties can be added here */
  ),

child: Image.network('https://upload.wikimedia.org/wikipedia/commons/4/47/PNG_transparency_demonstration_1.png')



) )

,

Expanded(child:Container(
margin: EdgeInsets.all(15),
alignment: Alignment.center,
decoration: BoxDecoration(
  color: Colors.blue,
    borderRadius: BorderRadius.all(Radius.circular(10)) // Adjust the radius value as needed
    /* Other decoration properties can be added here */
  ),

width: 120,

height: 160,

child: Image.network('https://upload.wikimedia.org/wikipedia/commons/4/47/PNG_transparency_demonstration_1.png')
)
 
 
 )




],



),


)





  ],
),

),



 ),

      )

      )
      
      
      
    );


}



int gene(){

var random=Random();

int num=random.nextInt(20);

return num;


}



}