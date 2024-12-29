import 'package:flutter/material.dart';

class EmotIconFace extends StatelessWidget {
  const EmotIconFace({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.emoji_emotions,
            color: Colors.yellow,
              size: 35,
            ),
          )
        ),

        Container(
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.emoji_emotions,
                color: Colors.yellow,
                size: 35,
              ),
            )
        ),
        Container(
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.emoji_emotions,
                color: Colors.yellow,
                size: 35,
              ),
            )
        ),

        Container(
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.emoji_emotions,
                color: Colors.yellow,
                size: 35,
              ),
            )
        ),

        Container(
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.emoji_emotions,
                color: Colors.yellow,
                size: 35,
              ),
            )
        ),

      ],
    );
  }
}
