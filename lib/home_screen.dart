import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:whatsapp_replica/calls_view.dart';
import 'package:whatsapp_replica/chats_view.dart';
import 'package:whatsapp_replica/custom_appbar.dart';
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
      appBar: getAppBarForTab(_selectedIndex),
      body: _views[_selectedIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat,size: 30,), label: 'Chats'),
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