import 'package:flutter/material.dart';
import 'package:whatsapp/call.dart';

class Communitiescreen extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
     Future.delayed(Duration(seconds:5),(){
      Navigator.push(context,MaterialPageRoute(builder: (context)=> Callscreen()),
      );

    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Communities",style: TextStyle(fontSize: 25),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.qr_code)),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_sharp)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],
        
      ),
      body: Column(
      
        
        children: [
          Padding(
            padding: const EdgeInsets.all(150) ,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(255, 185, 233, 186)),
              
            
              
            ),
          ), 
          SizedBox(height: 20,),
           Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                " Stay connected with a community",
                style: TextStyle(color: Colors.black),),
            ],
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        
            children: [
              Center(
                child: Text(
                  """Communities bring members together in topic-based group,
                  and make it easy to get admin announcements.
                  Any community you're added to will appear here. """,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text("See example communities >",style: TextStyle(color: Colors.green),)],

          ),
          SizedBox(height: 15,),
          Container(
            height: 30,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.green),
            child: Center(child: Text("Start your community",style: TextStyle(color: Colors.white),)),
          ),
         
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.update),label: "Updates"),
        BottomNavigationBarItem(icon: Icon(Icons.group_add_rounded),label: "Communities"),
        BottomNavigationBarItem(icon: Icon(Icons.call),label: "Calls"),
      ]
      ),
          
    );
  }
  }