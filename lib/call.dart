import 'package:flutter/material.dart';
import 'package:whatsapp/Database.dart';

class Callscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("Calls"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.qr_code)),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_sharp)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Favorites"),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.green,
                        child: Icon(Icons.favorite,color: Colors.black,),
                        
                      ),
                    ],
                  ),
                ),
                Text("Add favorite")
              ],
            
            ),
          ),
            
            
           
          
          SizedBox(height: 15,
          child: Text(" Recent"),),
          
          Expanded(child: 
          ListView.builder(
            itemCount: 10,itemBuilder: (Context,index)
            {
              return ListTile(
                leading: CircleAvatar(radius: 30,child: Image(image: AssetImage
                (Database.Mylist3[index]["image"])),
                ),

                 trailing:Database.Mylist3[index][Icon],
                title:Text(Database.Mylist3[index]["name"],),
                
                  subtitle:Text(Database.Mylist3[index]["time"],),
                 
                

              );
            })
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