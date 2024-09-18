import 'package:flutter/material.dart';
import 'package:whatsapp/Communities.dart';
import 'package:whatsapp/Database.dart';

class Update extends StatelessWidget{
  @override
  Widget build(BuildContext context){
     Future.delayed(Duration(seconds:5),(){
      Navigator.push(context,MaterialPageRoute(builder: (context)=> Communitiescreen()),
      );

    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Updates",style: TextStyle(fontSize: 25),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.qr_code),),
          IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt_sharp),),
           IconButton(onPressed: () {},icon: Icon(Icons.search),),
           IconButton(onPressed: (){}, icon:Icon(Icons.more_vert),),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Status",style: TextStyle(fontSize: 20,)),
          ),
          Container(
            height: 80,
          width: double.infinity,
          
          child: Row(
            children: [
              Container(
                height:50,
                width: 60,
                decoration:  BoxDecoration(borderRadius: BorderRadius.circular(30),
              image: DecorationImage(image: AssetImage("assets/images/p1.jpeg"),),),
     ),
              Row(
                children: [
                  Text("My status",
                  ),],
                ),
               Row(
                   children: [
                     Text("12:24 Pm",style: TextStyle(
                    color: const Color.fromARGB(255, 105, 104, 104)),)
                   ],
                  
                  ),
            ],
          ),

          
        ),
            
            SizedBox(height: 15,
            
              child: Text(" Recent updates",style: TextStyle(
                color: const Color.fromARGB(255, 102, 101, 101)),),
            ),
            Expanded(child: 
            ListView.builder(itemCount:10, itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child:Image(image: AssetImage(Database.Mylist[index]["image"])),
                  ),
                    title:Text(Database.Mylist1[index]["name"],
                    ),
                    subtitle: Text(Database.Mylist1[index]["time"],style: TextStyle(color: const Color.fromARGB(255, 87, 85, 85)),),
                    
                
                    
                   
                 );
              },
            ),)
],
 ),
 floatingActionButton: FloatingActionButton(onPressed: (){},
 backgroundColor: Colors.green,
 child: Container(
  height: 25,
  width: 25,
  color: Colors.white,
  child: Icon(Icons.camera_alt_rounded),
 ),),
         bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: const Color.fromARGB(255, 214, 218, 214),
          
          items:[
            BottomNavigationBarItem(icon:Icon(Icons.chat_sharp),
            label: "Chats"),
             BottomNavigationBarItem(icon:Icon(Icons.update),
             label: "Updates"),
              BottomNavigationBarItem(icon:Icon(Icons.group_add_rounded),
              label: "Communities"),
               BottomNavigationBarItem(icon:Icon(Icons.call),
               label: "Calls"),
                 ] 
          ),
   );
       }
}