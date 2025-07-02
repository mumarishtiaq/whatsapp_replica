import 'package:flutter/material.dart';

Widget ChatTemplate(name , msg , time , avatar,unreadCount)
{
  Color col = unreadCount > 0 ? const Color(0xFF25D366) : Colors.grey;
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    leading: CircleAvatar(
      backgroundImage: NetworkImage(avatar),
    ),
    title: Text(name,
    style: const TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
    subtitle: Text(msg, style: const TextStyle(color: Colors.white70),),
    trailing: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    Text(
      time,
      style:  TextStyle(color:col, fontSize: 12),
    ),
    if (unreadCount> 0) ...[
      const SizedBox(height: 6),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
          color: Color(0xFF25D366),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          '$unreadCount',
          style: const TextStyle(
            color: Color(0xFF121B22),
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  ],
),

    
  );
}