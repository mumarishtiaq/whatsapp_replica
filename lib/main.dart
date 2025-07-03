import 'package:flutter/material.dart';
import 'package:whatsapp_replica/calling_view.dart';
import 'package:whatsapp_replica/home_screen.dart';

void main() {
  runApp(const WhatsappReplica());
}

class WhatsappReplica extends StatelessWidget {
  const WhatsappReplica({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp",
      home: HomeScreen(),

      // home: CallingView(),
    );
  }
}
