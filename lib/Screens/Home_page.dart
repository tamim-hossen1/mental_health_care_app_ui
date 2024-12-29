import 'package:flutter/material.dart';
import 'package:mental_health_care_app/utility/emojy_Screen.dart';
import 'package:mental_health_care_app/utility/execise.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  //greeting
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi,Tamim',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '27 Nov,2024',
                            style: TextStyle(
                              color: Colors.blue[100],
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //Search Bar

                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        filled: true,
                        fillColor: Colors.blue[300],
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      Icon(Icons.more_horiz,
                      color: Colors.white,
                      )

                    ],
                  ),
                  SizedBox(height: 25,),
                  EmotIconFace(),

                ],
              ),
            ),

            Expanded(

                child:Container(

                  decoration: BoxDecoration(

                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)
                    )
                  ),
                  child: Column(
                    children: [
                      Center(child: Icon(Icons.linear_scale)),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Exercise',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                              ),
                            ),
                            Icon(Icons.more_horiz,
                              size: 35,
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 16,),

                     Expanded(
                       child: ListView(
                         children: [
                           Execise(
                             icon: Icon(Icons.favorite),
                             ExerciseName: 'Speaking Skills',
                             NumberOfExercise: '16 Exercise',
                             colors: Colors.orange,
                           ),
                           Execise(
                             icon: Icon(Icons.add),
                             ExerciseName: 'IQ Skills',
                             NumberOfExercise: '20 Exercise',
                             colors:Colors.blueGrey
                           ),
                           Execise(
                               icon: Icon(Icons.person),
                               ExerciseName: 'Reading Skills',
                               NumberOfExercise: '12 Exercise',
                             colors: Colors.lightBlueAccent,
                           ),
                           Execise(
                             icon: Icon(Icons.star),
                               ExerciseName: 'Lisiting Skills',
                               NumberOfExercise: '14 Exercise',
                             colors: Colors.lightBlue,
                           )
                         ],
                       ),
                     )
                      

                    ],
                  ),

                )
            )
          ],
        ),

      ),
      bottomNavigationBar: NavigationBar(
          destinations:[
            NavigationDestination(icon: Icon(Icons.home), label: ''),
            NavigationDestination(icon: Icon(Icons.settings), label:''),
            NavigationDestination(icon: Icon(Icons.ac_unit), label: '')
          ]
      ),
    );
  }
}
