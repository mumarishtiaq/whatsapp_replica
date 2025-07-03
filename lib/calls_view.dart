import 'package:flutter/material.dart';
import 'package:whatsapp_replica/templates/call_template.dart';

class CallsView extends StatelessWidget {
   CallsView({super.key});

final List _calls = [
  {
    "name": "Akber Ali",
    "avatar": "https://i.pravatar.cc/150?img=6",
    "type": "incoming",
    "isVideo": false,
    "time": "Just now"
  },
  {
    "name": "Usman",
    "avatar": "https://i.pravatar.cc/150?img=16",
    "type": "missed",
    "isVideo": false,
    "time": "5 minutes ago"
  },
  {
    "name": "Bilal",
    "avatar": "https://i.pravatar.cc/150?img=13",
    "type": "outgoing",
    "isVideo": false,
    "time": "14 minutes ago"
  },
  {
    "name": "Fatima",
    "avatar": "https://i.pravatar.cc/150?img=15",
    "type": "outgoing",
    "isVideo": true,
    "time": "Today, 3:00 PM"
  },
  {
    "name": "Noor",
    "avatar": "https://i.pravatar.cc/150?img=10",
    "type": "outgoing",
    "isVideo": false,
    "time": "Today, 7:30 AM"
  },
  {
    "name": "Sarah",
    "avatar": "https://i.pravatar.cc/150?img=12",
    "type": "outgoing",
    "isVideo": true,
    "time": "Today, 11:00 AM"
  },
  {
    "name": "Ayesha",
    "avatar": "https://i.pravatar.cc/150?img=5",
    "type": "missed",
    "isVideo": false,
    "time": "Today, 12:20 PM"
  },
  {
    "name": "Ali Khan",
    "avatar": "https://i.pravatar.cc/150?img=11",
    "type": "incoming",
    "isVideo": false,
    "time": "Yesterday, 9:24 PM"
  },
  {
    "name": "Emma",
    "avatar": "https://i.pravatar.cc/150?img=4",
    "type": "incoming",
    "isVideo": true,
    "time": "Yesterday, 8:45 PM"
  },
  {
    "name": "Hassan",
    "avatar": "https://i.pravatar.cc/150?img=9",
    "type": "missed",
    "isVideo": true,
    "time": "Yesterday, 6:00 PM"
  },
  {
    "name": "Zainab",
    "avatar": "https://i.pravatar.cc/150?img=7",
    "type": "outgoing",
    "isVideo": true,
    "time": "Monday, 2:14 PM"
  },
  {
    "name": "David",
    "avatar": "https://i.pravatar.cc/150?img=8",
    "type": "incoming",
    "isVideo": false,
    "time": "Sunday, 4:01 PM"
  },
  {
    "name": "John",
    "avatar": "https://i.pravatar.cc/150?img=1",
    "type": "incoming",
    "isVideo": true,
    "time": "2 days ago"
  },
  {
    "name": "Iqra",
    "avatar": "https://i.pravatar.cc/150?img=14",
    "type": "incoming",
    "isVideo": false,
    "time": "Last week"
  },
  {
    "name": "Sophia",
    "avatar": "https://i.pravatar.cc/150?img=17",
    "type": "incoming",
    "isVideo": true,
    "time": "Friday, 9:40 PM"
  },
];


  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemCount: _calls.length, 
      physics: BouncingScrollPhysics(),
    itemBuilder: (context , index){
      
      if(index == 0 )
      {
        return Padding(padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 10),
        child: Text("Recent",style: TextStyle(color: Colors.grey , fontSize: 20 , fontWeight: FontWeight.bold),),);
      }
      final call = _calls[index];

      return call_template(call["name"],call["avatar"],call["type"],call["isVideo"],call["time"]);

    }
    );
    
  }
}