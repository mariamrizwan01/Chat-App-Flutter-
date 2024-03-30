import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Color(0xFFE1E1E2), boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(3, 3),
                )
              ]),
              child: Text(
                "Hi, Mariam, How Are You ?..",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 80),
          child: ClipPath(
            clipper: LowerNipMessageClipper(MessageType.send),
            child: Container(
              padding:
                  EdgeInsets.only(left: 20, top: 10, bottom: 25, right: 20),
              decoration: BoxDecoration(color: Color(0xFF113953), boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(3, 3),
                )
              ]),
              child: Text(
                "Hi, I'm fine.. thanks for asking what about you. i hope you will be fine?",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
