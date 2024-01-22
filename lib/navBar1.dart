import 'package:flutter/material.dart';

class navBar1 extends StatelessWidget {
 var arrData = [
   {
     "title" : "MS Dhoni",
     "unread" : 2,
   },
   {
     "title" : "Andre Russel",
     "unread" : 21,
   },
   {
     "title" : "Rohit Sharma",
     "unread" : 9,
   },
   {
     "title" : "Virat Kohli",
     "unread" : 4,
   },
   {
     "title" : "Rabindra Jadeja",
     "unread" : 8,
   },

   {
     "title" : "Matheesha Pathirana",
     "unread" : 1,
   },
   {
     "title" : "Surya Kumar Yadav",
     "unread" : 7,
   },
   {
     "title" : "Ishan Kishan",
     "unread" : 4,
   },
   {
     "title" : "Ruturaj Gaikwad",
     "unread" : 1,
   },
   {
     "title" : "Subhaman Gill",
     "unread" : 3,
   },
   {
     "title" : "Rashid Khan",
     "unread" : 2,
   },{
     "title" : "Deepak Chahar",
     "unread" : 2,
   },
   {
     "title" : "AB Devillers",
     "unread" : 21,
   },
   {
     "title" : "Hasim Amla",
     "unread" : 9,
   },
   {
     "title" : "Chris Jordan",
     "unread" : 4,
   },
   {
     "title" : "Devon Conway",
     "unread" : 8,
   },

   {
     "title" : "Yashasvi Jaiswal",
     "unread" : 1,
   },
   {
     "title" : "David Warner",
     "unread" : 7,
   },
   {
     "title" : "Axar Patel",
     "unread" : 4,
   },
   {
     "title" : "Harry Brook",
     "unread" : 1,
   },
   {
     "title" : "Shikhar Dhawan",
     "unread" : 3,
   },
   {
     "title" : "KL Rahul",
     "unread" : 2,
   }
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text("Messenger"),
    centerTitle: true,
    foregroundColor: Colors.white,
      backgroundColor: Colors.teal,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined))
      ],
    ),
    body: ListView(
      children: arrData.map((value){
        return Padding(
          padding: const EdgeInsets.all(1.0),
          child: ListTile(
            subtitle: Text("Tap to read message"),
            title: Text(value["title"].toString(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            leading: Icon(Icons.account_circle, size: 30,),
            trailing: CircleAvatar(
              radius: 11,
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
              child: Text(value['unread'].toString()),
            ),
          ),
        );
      }).toList()
    ),
    );
  }
}
