import 'package:flutter/material.dart';
import 'package:whatsapp_replica/calling_view.dart';

void onPressedCallButton(BuildContext context, String name, avatar) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => CallingView(name: name, avatar: avatar),
    ),
  );
}

Widget call_template(BuildContext context, name, avatar, type, isVideo, time) {
  IconData icon = type == "incoming" ? Icons.call_received : Icons.call_made;
  Color iconColor = type == "incoming" ? Colors.red : const Color(0xFF25D366);
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    leading: CircleAvatar(backgroundImage: NetworkImage(avatar)),
    title: Text(
      name,
      style: TextStyle(color: type == "incoming" ? Colors.red : Colors.white),
    ),

    subtitle: Row(
      children: [
        Icon(icon, color: iconColor, size: 16),
        SizedBox(width: 5),
        Text(time, style: TextStyle(color: Colors.grey)),
      ],
    ),

    trailing: IconButton(
      onPressed: () {
        onPressedCallButton(context, name, avatar);
      },
      icon: Icon(
        isVideo ? Icons.videocam : Icons.call,
        color: const Color(0xFF25D366),
      ),
    ),
  );
}
