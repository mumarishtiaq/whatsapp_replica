import 'package:flutter/material.dart';
import 'package:whatsapp_replica/calls_view.dart';

class CallingView extends StatelessWidget {
  final String name;
  final String avatar;
  const CallingView({super.key, required this.name, required this.avatar});

  Widget buildHeading() {
    return Positioned(
      top: 25,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              overflow: TextOverflow.ellipsis,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "Ringing",
            style: const TextStyle(color: Colors.white70),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget createButton(
    double width,
    double height,
    int bgColor,
    IconData icon,
    int iconColor,
  ) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: Color(bgColor), shape: BoxShape.circle),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon, color: Color(iconColor)),
        iconSize: 28,
      ),
    );
  }

  void onCallEnd(BuildContext context) {
    Navigator.pop(
      context,
      MaterialPageRoute(builder: (context) => CallsView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121B22),

      body: SafeArea(
        child: Stack(
          children: [
            //----------top bar -----------
            Positioned(
              left: 18,
              top: 20,
              child: createButton(
                55,
                55,
                0xFF2A3942,
                Icons.fullscreen_exit,
                0xFFFFFFFF,
              ),
            ),

            Positioned(
              top: 20,
              right: 18,
              child: createButton(
                55,
                55,
                0xFF2A3942,
                Icons.person_add_alt_1,
                0xFFFFFFFF,
              ),
            ),

            buildHeading(),

            //-----------center avatar -------------
            Positioned.fill(
              child: Center(
                child: CircleAvatar(
                  radius: 120,
                  backgroundImage: NetworkImage(avatar),
                ),
              ),
            ),

            //---------bottom bar ---------
            Positioned(
              bottom: 30,
              left: 25,
              right: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  createButton(60, 60, 0xFF2A3942, Icons.more_vert, 0xFFFFFFFF),
                  createButton(60, 60, 0xFF2A3942, Icons.videocam, 0xFF9E9E9E),
                  createButton(60, 60, 0xFF2A3942, Icons.volume_up, 0xFFFFFFFF),
                  createButton(60, 60, 0xFF2A3942, Icons.mic_off, 0xFFFFFFFF),
                  // createButton(60, 60, 0xFFEF4F4F, Icons.call_end, 0xFFFFFFFF),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFEF4F4F),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        onCallEnd(context);
                      },
                      icon: Icon(Icons.call_end, color: Color(0xFFFFFFFF)),
                      iconSize: 28,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
