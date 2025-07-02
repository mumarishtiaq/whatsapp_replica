 import 'package:flutter/material.dart';
 
 AppBar getAppBarForTab(int index)
    {
      switch(index)
      {
        case 0 : 
        return buildAppBar("WhatsApp", Color(0xFF25D366),Icons.camera_alt);
      case 1 : 
       return buildAppBar("Updates", Colors.white,Icons.search);
      case 2 : 
        return buildAppBar("Calls", Colors.white,Icons.search);

      default : 
          return AppBar();
      }
    }


    AppBar buildAppBar(String title, Color col, IconData actionIcon)
    {
  return AppBar(title: Text(
        title,
      style: TextStyle(color:  col, fontWeight: FontWeight.bold,fontSize: 25),
      ),
      backgroundColor: const Color(0xFF121B22),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(actionIcon) ,color: Colors.white,),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert),color: Colors.white )
      ],
      );
    } 