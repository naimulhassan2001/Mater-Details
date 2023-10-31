
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart' as rootBundle ;
import 'package:master_details/person_details.dart';

import 'name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),

    );
  }
}

class Homepage extends StatefulWidget {




  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {



  List<Details> info = [

    Details(name: "Babul Mirdha", mobile: "01616983473", email: "babulmirdha@gmail.com", image: "assets/babul.png"),
    Details(name: "Amirul Haque Shuhan", mobile: "017729955866", email: "shuan@gmail.com", image: "assets/shuhan.png"),
    Details(name: "Naimul Hassan", mobile: "01865965581", email: "naimulhassan0001@gmail.com", image: "assets/naimul.jpg"),
    Details(name: "Sagor Ahammed", mobile: "01896473855", email: "sagor@gmail.com", image: "assets/sagor.png"),
    Details(name: "Masum Raj", mobile: "01355813694", email: "masum@gmail.com", image: "assets/masum.png"),
    Details(name: "Siam Prodhan", mobile: "01752946683", email: "siam@gmail.com", image: "assets/siam.png"),
    Details(name: "Tuhin Hossian", mobile: "01964552837", email: "tuhin@gmail.com", image: "assets/tuhin.png"),

  ] ;

  @override
  Widget build(BuildContext context) {






    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: ListView.builder(
            itemCount: info.length,
              itemBuilder: (context, index) {
                return  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Naimul(name: "${info[index].name}", mobile: "${info[index].mobile}", email: "${info[index].email}", image: "${info[index].image}",)));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(

                          height: 104,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.black26,
                          child: Column(

                            children: [
                              SizedBox(height: 4,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Expanded(
                                    flex: 3,

                                    child: CircleAvatar(
                                      radius: 50, // Image radius
                                      backgroundImage: AssetImage('${info[index].image}'),

                                    ),
                                  ),
                                  Expanded(
                                    flex: 7,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Name: ${info[index].name}", style: TextStyle(fontSize: 20),),
                                        Text("Mobile: ${info[index].mobile}", style: TextStyle(fontSize: 20),),
                                        SingleChildScrollView(scrollDirection: Axis.horizontal,
                                            child: Text("Email: ${info[index].email}", style: const TextStyle(fontSize: 20),)),

                                      ],
                                    ),
                                  ),



                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
          )
        ),
      ),

    );
  }
}


