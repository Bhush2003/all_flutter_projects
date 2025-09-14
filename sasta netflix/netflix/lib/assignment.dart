import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Assignment();
}

class _Assignment extends State<Assignment> {
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.black,
              //title: const Text("NETFLIX",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.black),)
              title: Image.network('https://images.ctfassets.net/y2ske730sjqp/1aONibCke6niZhgPxuiilC/2c401b05a07288746ddf3bd3943fbc76/BrandAssets_Logos_01-Wordmark.jpg?w=940',height: 45, width:150,),
              

      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection:Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
         
        children: [
          const Text("MOVIE",style: TextStyle(fontStyle: FontStyle.normal,color: Colors.white),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          child :Row(
            
            children: [
              SizedBox(
                width:10
              ),
              Container(
                child: Image.network(	'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg'),
                width: 200,
                height:400,
              ),
              SizedBox(
                width:10
              ),
              Container(
                child: Image.network(	'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg'),
                width: 200,
                height:400,
              ),
              SizedBox(
                height:10
              ),
            ],),),
          const Text("Web Seriese",style: TextStyle(fontStyle: FontStyle.normal,color: Colors.white),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          child :Row(
            
            children: [
              SizedBox(
                width:10
              ),
              Container(
                child: Image.network(	'https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg'),
                width: 150,
                height:300,
              ),
              SizedBox(
                width:10
              ),
              Container(
                child: Image.network(	'https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943'),
                width: 150,
                height:300,
              )
            ],
            ),

          ), 
         
         const Text("Popular Movies",style: TextStyle(fontStyle: FontStyle.normal,color: Colors.white),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          child :Row(
            
            children: [
              SizedBox(
                width:10
              ),
              Container(
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc'),
                width: 100,
                height:200,
              ),
              SizedBox(
                width:10
              ),
              Container(
                child: Image.network(	'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s'),
                width: 100,
                height:200,
              )
            ],
            ),

          ) 
         ],
          ),),
          
          );
      
    
    
  }
}
