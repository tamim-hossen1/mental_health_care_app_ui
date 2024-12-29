import 'package:flutter/material.dart';
class Execise extends StatelessWidget {

  final icon;
  final String ExerciseName;
  final String NumberOfExercise;
  final Color colors;

  const Execise({super.key, this.icon, required this.ExerciseName, required this.NumberOfExercise, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: colors,
                      ),

                      child: icon,
                  ),
                  SizedBox(width: 16,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ExerciseName,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        NumberOfExercise,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14
                        ),
                      )
                    ],
                  ),
                ],
              ),

              Icon(Icons.more_horiz,
                size: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
