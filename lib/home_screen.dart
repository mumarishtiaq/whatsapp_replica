import 'package:flutter/material.dart';
import 'package:whatsapp_replica/calls_view.dart';
import 'package:whatsapp_replica/chats_view.dart';
import 'package:whatsapp_replica/status_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

int _selectedIndex = 0;
  final List<Widget> _views = [
    ChatsView(),
    StatusView(),
    CallsView(),
  ];

    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF121B22),
      appBar: AppBar(title: Text(
        "WhatsApp",
      style: TextStyle(color: const Color(0xFF25D366), fontWeight: FontWeight.bold,fontSize: 20),
      ),
      backgroundColor: const Color(0xFF121B22),),
      body: Column(children: [
        Padding(
          padding:const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Ask Meta AI or Search ",
              prefixIcon: Icon(Icons.search, color: Colors.grey,),
              filled: true,
              fillColor: const Color(0xFF1F2C34),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0),borderSide: BorderSide.none),
              hintStyle: TextStyle(color: Colors.grey)
            ),
            style: TextStyle(color: Colors.white),
          ),
          ),
          Expanded(child: _views[_selectedIndex]),

      ],),
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat,size: 30,), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.update,size: 30,), label: 'Updates'),
          BottomNavigationBarItem(icon: Icon(Icons.call,size: 30,), label: 'Calls'),
        ],
        currentIndex: _selectedIndex,
         unselectedItemColor: Colors.grey,
        backgroundColor: const Color(0xFF121B22) ,
         selectedItemColor: const Color(0xFF25D366),
        onTap: _onItemTapped,
      ),
      
    );
  }
}