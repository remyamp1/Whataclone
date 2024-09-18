import 'package:flutter/material.dart';
import 'package:whatsapp/Database.dart';
import 'package:whatsapp/update.dart';

class Chat extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    Future.delayed(Duration(seconds:5),(){
      Navigator.push(context,MaterialPageRoute(builder: (context)=> Update()),
      );

    });
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp",style: TextStyle(fontSize: 20),),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.qr_code),),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_sharp),),
          IconButton(onPressed:(){}, icon: Icon(Icons.more_vert),)
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
           child:
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text("Ask Meta AI or search",style: TextStyle(fontSize: 15),),
              ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), 
        ),
            ),
            Expanded(child: 
            ListView.builder(itemCount:10, itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child:Image(image: AssetImage(Database.Mylist[index]["image"])),
                  ),
                    title:Text(Database.Mylist[index]["name"],
                    ),
                    subtitle:Text(Database.Mylist[index]["message"]),
                    trailing:Text(Database.Mylist[index]["data"]),
                   
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
  child: Icon(Icons.add),
 ),),
         bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: const Color.fromARGB(255, 214, 218, 214),
          
          items:[
            BottomNavigationBarItem(icon:Icon(Icons.chat_sharp),label: "Chats"),
             BottomNavigationBarItem(icon:Icon(Icons.update),label: "Updates"),
              BottomNavigationBarItem(icon:Icon(Icons.group_add_rounded),label: "Communities"),
               BottomNavigationBarItem(icon:Icon(Icons.call),label: "Calls"),
                 ] 
          ),
   );
       }
}