import 'package:flutter/material.dart';
import 'package:whatsapp_replica/templates/chat_template.dart';
import 'package:whatsapp_replica/templates/status_template.dart';

class StatusView extends StatelessWidget {
   StatusView({super.key});

final List contactStatuses = [
  {
    "name": "Ali Khan",
    "avatar": "https://i.pravatar.cc/150?img=1",
    "isSeen": true,
  },
  {
    "name": "Emma Johnson",
    "avatar": "https://i.pravatar.cc/150?img=2",
    "isSeen": true,
  },
  {
    "name": "Ahmed Raza",
    "avatar": "https://i.pravatar.cc/150?img=3",
    "isSeen": false,
  },
  {
    "name": "Sophia Wilson",
    "avatar": "https://i.pravatar.cc/150?img=4",
    "isSeen": true,
  },
  {
    "name": "Zainab Tariq",
    "avatar": "https://i.pravatar.cc/150?img=5",
    "isSeen": false,
  },
  {
    "name": "John Smith",
    "avatar": "https://i.pravatar.cc/150?img=6",
    "isSeen": true,
  },
  {
    "name": "Fatima Noor",
    "avatar": "https://i.pravatar.cc/150?img=7",
    "isSeen": false,
  },
  {
    "name": "Michael Brown",
    "avatar": "https://i.pravatar.cc/150?img=8",
    "isSeen": false,
  },
  {
    "name": "Hassan Ali",
    "avatar": "https://i.pravatar.cc/150?img=9",
    "isSeen": false,
  },
  {
    "name": "Olivia Davis",
    "avatar": "https://i.pravatar.cc/150?img=10",
    "isSeen": false,
  },
  {
    "name": "Bilal Sheikh",
    "avatar": "https://i.pravatar.cc/150?img=11",
    "isSeen": true,
  },
  {
    "name": "James Taylor",
    "avatar": "https://i.pravatar.cc/150?img=12",
    "isSeen": false,
  },
];

final List channels = [
  {
    'name': 'WhatsApp',
    'message': 'New feature: Voice chats are here!',
    'time': '9:00 AM',
    'avatar': 'https://randomuser.me/api/portraits/men/10.jpg',
    'unreadCount': 3,
  },
  {
    'name': 'Ali Khan',
    'message': 'Join my tech updates channel.',
    'time': '11:45 AM',
    'avatar': 'https://randomuser.me/api/portraits/men/1.jpg',
    'unreadCount': 0,
  },
  {
    'name': 'Health & Fitness',
    'message': '5 Tips to stay fit during monsoon',
    'time': 'Yesterday',
    'avatar': 'https://randomuser.me/api/portraits/women/20.jpg',
    'unreadCount': 2,
  },
  {
    'name': 'Foodies United',
    'message': 'Try out this 5-min dessert recipe!',
    'time': 'Today, 8:20 AM',
    'avatar': 'https://randomuser.me/api/portraits/men/25.jpg',
    'unreadCount': 1,
  },


  {
    'name': 'Foodies United',
    'message': 'Try out this 5-min dessert recipe!',
    'time': 'Today, 8:20 AM',
    'avatar': 'https://randomuser.me/api/portraits/men/25.jpg',
    'unreadCount': 1,
  },
  {
    'name': 'Foodies United',
    'message': 'Try out this 5-min dessert recipe!',
    'time': 'Today, 8:20 AM',
    'avatar': 'https://randomuser.me/api/portraits/men/25.jpg',
    'unreadCount': 1,
  },
  {
    'name': 'Foodies United',
    'message': 'Try out this 5-min dessert recipe!',
    'time': 'Today, 8:20 AM',
    'avatar': 'https://randomuser.me/api/portraits/men/25.jpg',
    'unreadCount': 1,
  },
  {
    'name': 'Foodies United',
    'message': 'Try out this 5-min dessert recipe!',
    'time': 'Today, 8:20 AM',
    'avatar': 'https://randomuser.me/api/portraits/men/25.jpg',
    'unreadCount': 1,
  },
  {
    'name': 'Foodies United',
    'message': 'Try out this 5-min dessert recipe!',
    'time': 'Today, 8:20 AM',
    'avatar': 'https://randomuser.me/api/portraits/men/25.jpg',
    'unreadCount': 1,
  },
  {
    'name': 'Foodies United',
    'message': 'Try out this 5-min dessert recipe!',
    'time': 'Today, 8:20 AM',
    'avatar': 'https://randomuser.me/api/portraits/men/25.jpg',
    'unreadCount': 1,
  },
  {
    'name': 'Foodies United',
    'message': 'Try out this 5-min dessert recipe!',
    'time': 'Today, 8:20 AM',
    'avatar': 'https://randomuser.me/api/portraits/men/25.jpg',
    'unreadCount': 1,
  },
  {
    'name': 'Foodies United',
    'message': 'Try out this 5-min dessert recipe!',
    'time': 'Today, 8:20 AM',
    'avatar': 'https://randomuser.me/api/portraits/men/25.jpg',
    'unreadCount': 1,
  },
];


Widget buildMyStatusTile()
{
  return Column(
    children: [

      Stack(
        children: [
          CircleAvatar(backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=6"),radius: 30,),
          Positioned(
            bottom: 0,right: 0,child: CircleAvatar(radius: 12, backgroundColor: Colors.green,
          child: Icon(Icons.add,size: 20,color: const Color(0xFF121B22),),),
          )
        ],
      ),
       SizedBox(height: 6),
      Text("My status", style: TextStyle(color: Colors.white, fontSize: 12),)
      

    ],
  );
}

Widget buildStatusList()
{
   return SizedBox(
      height: 110,
      child:  ListView.builder(
        itemCount: contactStatuses.length +1,
        padding: EdgeInsets.symmetric(horizontal: 8),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
          if(index == 0)
          {
            return Padding(padding: EdgeInsets.symmetric(horizontal: 8),child: buildMyStatusTile(),);
          }
          else
          {
            final status = contactStatuses[index - 1];
            return Padding(padding: EdgeInsets.symmetric(horizontal: 8),
            child: statusTemplate(status["name"], status["avatar"], status["isSeen"]),
            );
          }
        },
      )
    );
}
  @override
  Widget build(BuildContext context) {
   
    // return buildStatusList();

    return SingleChildScrollView(
      child:  
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //status heading
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Text("Status" , style: TextStyle(color: Colors.grey , fontSize: 20 , fontWeight: FontWeight.bold),),
        ),
        //building status list
        buildStatusList(),

        //channel heading
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
           Text("Channels" , style: TextStyle(color: Colors.grey , fontSize: 20 , fontWeight: FontWeight.bold),),

           SizedBox(
            width: 95,height: 33,
            child: ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF25D366)),
             child: Text("Explore", style: TextStyle(color: const Color(0xFF121B22),fontWeight: FontWeight.bold),)),
           )
           
        ],),
        ),
        ListView.builder(
          shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(),
          itemCount: channels.length,
          itemBuilder: (context, index) 
          {
            return ChatTemplate(channels[index]["name"], channels[index]["message"], channels[index]["time"], channels[index]["avatar"], channels[index]["unreadCount"]);
          },
        )
    ],));


  }
}