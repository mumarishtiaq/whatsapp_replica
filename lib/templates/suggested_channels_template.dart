import 'package:flutter/material.dart';

Widget suggestedChannelsTemplate(avatar ,title, followersCount)
{
  final followers = '${(followersCount / 1000).round()}k followers';
 return  ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
          leading: CircleAvatar(backgroundImage: NetworkImage(avatar),),
          title: Text(title,
          style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,overflow:TextOverflow.ellipsis)
          ),
          subtitle: Text(followers, style: const TextStyle(color: Colors.white70),),
          trailing: TextButton(onPressed: () {},style: TextButton.styleFrom(backgroundColor: const Color(0xFF25D366)),
           child: Text("Follow", style:  const TextStyle(color: Color(0xFF121B22), fontWeight: FontWeight.bold ) ))
           ,

        );
}