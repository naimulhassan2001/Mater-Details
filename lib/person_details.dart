

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Naimul extends StatelessWidget {

  String name ;
  String mobile;
  String email ;
  String image ;


  Naimul({super.key, required this.name, required this.mobile, required this.email, required this.image});




  callNumber() async {

    Uri dialNumber = Uri(scheme: 'tel', path: mobile );
    await launchUrl(dialNumber);


  }



  callemail() async {
    Uri dialemail = Uri(scheme: 'mailto', path: email );
    await launchUrl(dialemail);
  }




  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width *0.5 , // Image radius
                  backgroundImage: AssetImage(image),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name: $name", style: const TextStyle(fontSize: 20),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Mobile: $mobile", style: const TextStyle(fontSize: 20),),
                          Container(
                            width: 85,
                            alignment: Alignment.topRight,
                            child: ElevatedButton(onPressed: callNumber, child: const Row(
                              children: [
                                Icon(Icons.call),
                                Text("Call")
                              ],
                            ))

                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text("E-mail: $email", style: const TextStyle(fontSize: 20),)),
                          Container(
                            width: 85,
                            alignment: Alignment.topRight,
                            child: ElevatedButton(onPressed: callemail, child: const Row(
                              children: [
                                Icon(Icons.mail),
                                Text("mail")
                              ],
                            ))

                          )

                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
