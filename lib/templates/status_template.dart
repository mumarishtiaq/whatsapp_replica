import 'package:flutter/material.dart';

Widget statusTemplate(String name , String avatar , bool isSeen)
{
return Column(children: [
  Container(
    padding: EdgeInsets.all(2),
    decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: isSeen ? Colors.grey : const Color(0xFF25D366),width: 3)),
    child: CircleAvatar(radius: 30 , backgroundImage: NetworkImage(avatar),),
  ),
  SizedBox(height: 6,),
  SizedBox(width: 60,
  child: Text(name,
   style: TextStyle(color: Colors.white, fontSize: 13),
   textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,),)
],);
}