import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result",style: TextStyle(color: Colors.black),),
        actionsIconTheme: IconThemeData(color: Colors.black),
        actions: [
           IconButton(onPressed: (){


           }, icon: Icon(Icons.filter_alt_rounded),color: Colors.grey,),
          IconButton(onPressed: (){


          }, icon: Icon(Icons.sort),color: Colors.grey,),
        ],
      ),
      body: Column(

        children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              SizedBox(
                height: 10,
              ),
              Text(" 450 Result" ),
              Image(image: AssetImage("assets/image/bording_1.jpg"),),
              Row(
                children: [
                  Text("Servied apartment",style: TextStyle(color: Colors.teal),),
                  Spacer(),
                  Text(" Delivery 2028   ",style: TextStyle(color: Colors.grey),),
                ],
              ),
              Row(
                children: [
                  Text("EGP",style: TextStyle(color: Colors.deepOrange),),
                  Text("999,999,999",style: TextStyle(color: Colors.deepOrange),),
                  Spacer(),
                  IconButton(onPressed: (){

                  }, icon: Icon(Icons.favorite_border),)

                ],
              ),

              Text("117,493 EGP/month over7Yesrs",style: TextStyle(color: Colors.grey,fontSize:10 ),),
              Text("Mountin View-chillout park",style: TextStyle(color: Colors.grey,fontSize:17 ),),
              Text("6th October,Egypt",style: TextStyle(color: Colors.grey,fontSize:17 ),),



            ],
          ),
        ),

      ],),


    );


  }
}
