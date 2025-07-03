import 'package:flutter/material.dart';
import 'package:whatsapp_replica/templates/chat_template.dart';

class ChatsView extends StatelessWidget {
   ChatsView({super.key});

final List<Map<String, dynamic>> _chats = [
  {
    'name': 'Ali Khan',
    'message': 'Bhai, kal miltay hain.',
    'time': '10:00 AM',
    'avatar': 'https://randomuser.me/api/portraits/men/1.jpg',
    'unreadCount': 5,
  },
  {
    'name': 'Emma Johnson',
    'message': 'Sent the files.',
    'time': '9:15 AM',
    'avatar': 'https://randomuser.me/api/portraits/women/2.jpg',
    'unreadCount': 1,
  },
  {
    'name': 'Ahmed Raza',
    'message': 'Main office pohanch gaya hoon.',
    'time': 'Yesterday',
    'avatar': 'https://randomuser.me/api/portraits/men/3.jpg',
    'unreadCount': 0,
  },
  {
    'name': 'Sophia Wilson',
    'message': 'Loved the photos!',
    'time': '8:30 AM',
    'avatar': 'https://randomuser.me/api/portraits/women/4.jpg',
    'unreadCount': 2,
  },
  {
    'name': 'Zainab Tariq',
    'message': 'Assignment bhej diya?',
    'time': '5:15 PM',
    'avatar': 'https://randomuser.me/api/portraits/women/5.jpg',
    'unreadCount': 2,
  },
  {
    'name': 'John Smith',
    'message': 'Let’s catch up tomorrow.',
    'time': '10:30 AM',
    'avatar': 'https://randomuser.me/api/portraits/men/6.jpg',
    'unreadCount': 2,
  },
  {
    'name': 'Fatima Noor',
    'message': 'Paper tayari kaisi ja rahi?',
    'time': '2:20 PM',
    'avatar': 'https://randomuser.me/api/portraits/women/7.jpg',
    'unreadCount': 1,
  },
  {
    'name': 'Michael Brown',
    'message': 'How was the meeting?',
    'time': 'Yesterday',
    'avatar': 'https://randomuser.me/api/portraits/men/8.jpg',
    'unreadCount': 0,
  },
  {
    'name': 'Hassan Ali',
    'message': 'Aaj ka plan kya hai?',
    'time': '6:45 PM',
    'avatar': 'https://randomuser.me/api/portraits/men/9.jpg',
    'unreadCount': 3,
  },
  {
    'name': 'Olivia Davis',
    'message': 'Can we reschedule?',
    'time': '11:45 AM',
    'avatar': 'https://randomuser.me/api/portraits/women/10.jpg',
    'unreadCount': 3,
  },
  {
    'name': 'Bilal Sheikh',
    'message': 'Match kab hai aaj?',
    'time': '3:00 PM',
    'avatar': 'https://randomuser.me/api/portraits/men/11.jpg',
    'unreadCount': 0,
  },
  {
    'name': 'James Taylor',
    'message': 'See you at 6.',
    'time': '4:10 PM',
    'avatar': 'https://randomuser.me/api/portraits/men/12.jpg',
    'unreadCount': 0,
  },
  {
    'name': 'Ayesha Siddiqui',
    'message': 'Zoom class ka link bhejo.',
    'time': '9:50 AM',
    'avatar': 'https://randomuser.me/api/portraits/women/13.jpg',
    'unreadCount': 4,
  },
  {
    'name': 'Maria Iqbal',
    'message': 'Kal result announce ho ga.',
    'time': '7:10 PM',
    'avatar': 'https://randomuser.me/api/portraits/women/14.jpg',
    'unreadCount': 0,
  },
  {
    'name': 'William Miller',
    'message': 'I’m on my way.',
    'time': '1:00 PM',
    'avatar': 'https://randomuser.me/api/portraits/men/15.jpg',
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
        physics: BouncingScrollPhysics(),
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