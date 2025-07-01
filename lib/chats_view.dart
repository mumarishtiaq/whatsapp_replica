import 'package:flutter/material.dart';
import 'package:whatsapp_replica/chat_template.dart';

class ChatsView extends StatelessWidget {
   ChatsView({super.key});

final List _chats = [
  {
    'name': 'Ali Khan',
    'message': 'Bhai, kal miltay hain.',
    'time': '10:00 AM',
    'avatar': 'https://i.pravatar.cc/150?img=1',
    'unreadCount': 5,
  },
  {
    'name': 'Emma Johnson',
    'message': 'Sent the files.',
    'time': '9:15 AM',
    'avatar': 'https://i.pravatar.cc/150?img=2',
    'unreadCount': 1,
  },
  {
    'name': 'Ahmed Raza',
    'message': 'Main office pohanch gaya hoon.',
    'time': 'Yesterday',
    'avatar': 'https://i.pravatar.cc/150?img=3',
    'unreadCount': 0,
  },
  {
    'name': 'Sophia Wilson',
    'message': 'Loved the photos!',
    'time': '8:30 AM',
    'avatar': 'https://i.pravatar.cc/150?img=4',
    'unreadCount': 2,
  },
  {
    'name': 'Zainab Tariq',
    'message': 'Assignment bhej diya?',
    'time': '5:15 PM',
    'avatar': 'https://i.pravatar.cc/150?img=5',
    'unreadCount': 2,
  },
  {
    'name': 'John Smith',
    'message': 'Let’s catch up tomorrow.',
    'time': '10:30 AM',
    'avatar': 'https://i.pravatar.cc/150?img=6',
    'unreadCount': 2,
  },
  {
    'name': 'Fatima Noor',
    'message': 'Paper tayari kaisi ja rahi?',
    'time': '2:20 PM',
    'avatar': 'https://i.pravatar.cc/150?img=7',
    'unreadCount': 1,
  },
  {
    'name': 'Michael Brown',
    'message': 'How was the meeting?',
    'time': 'Yesterday',
    'avatar': 'https://i.pravatar.cc/150?img=8',
    'unreadCount': 0,
  },
  {
    'name': 'Hassan Ali',
    'message': 'Aaj ka plan kya hai?',
    'time': '6:45 PM',
    'avatar': 'https://i.pravatar.cc/150?img=9',
    'unreadCount': 3,
  },
  {
    'name': 'Olivia Davis',
    'message': 'Can we reschedule?',
    'time': '11:45 AM',
    'avatar': 'https://i.pravatar.cc/150?img=10',
    'unreadCount': 3,
  },
  {
    'name': 'Bilal Sheikh',
    'message': 'Match kab hai aaj?',
    'time': '3:00 PM',
    'avatar': 'https://i.pravatar.cc/150?img=11',
    'unreadCount': 0,
  },
  {
    'name': 'James Taylor',
    'message': 'See you at 6.',
    'time': '4:10 PM',
    'avatar': 'https://i.pravatar.cc/150?img=12',
    'unreadCount': 0,
  },
  {
    'name': 'Ayesha Siddiqui',
    'message': 'Zoom class ka link bhejo.',
    'time': '9:50 AM',
    'avatar': 'https://i.pravatar.cc/150?img=13',
    'unreadCount': 4,
  },
  {
    'name': 'Maria Iqbal',
    'message': 'Kal result announce ho ga.',
    'time': '7:10 PM',
    'avatar': 'https://i.pravatar.cc/150?img=14',
    'unreadCount': 0,
  },
  {
    'name': 'William Miller',
    'message': 'I’m on my way.',
    'time': '1:00 PM',
    'avatar': 'https://i.pravatar.cc/150?img=15',
    'unreadCount': 0,
  },
];


  @override
  Widget build(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Ask Meta AI or Search ",
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            filled: true,
            fillColor: const Color(0xFF1F2C34),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide.none,
            ),
            hintStyle: TextStyle(color: Colors.grey),
          ),
          style: TextStyle(color: Colors.white),
        ),
      ),
      Expanded(
        child: ListView.builder(
          itemCount: _chats.length,
          itemBuilder: (context, index) {
            final chat = _chats[index];
            return ChatTemplate(
              chat["name"],
              chat["message"],
              chat["time"],
              chat["avatar"],
              chat["unreadCount"],
            );
          },
        ),
      ),
    ],
  );
}
}