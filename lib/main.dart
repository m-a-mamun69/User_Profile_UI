import 'package:flutter/material.dart';
import 'package:profile/profile_ui.dart';

void main() =>
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.cyan,
    ),
    home: const MyApp(),
  ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileUI(),
    );
  }
}



/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home:  const  MyHomePage(title: 'My Profile' ),
    );
  }
}
*/
//New Code



/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  Container(
        color: Colors.grey[800],
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage("assets/images/mypic.jpg"),

              ),


              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:0),
                    child: Text("M A MAMUN",style: TextStyle(fontFamily: 'roboto',
                      fontSize: 30,
                      color: Colors.white,
                    ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    child: Divider(
                      color: Colors.white,

                    ),
                  ),
                  Text("Contact Info: m.a.mamunrashid69@gmail.com",
                    style: TextStyle(color: Colors.white,
                      fontFamily: 'WaterBrush',
                      fontSize: 18,
                    ),
                  ),
                ],
              ),


              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        child:
                        Padding(
                          padding:  EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.phone,color: Colors.teal,),
                              SizedBox(width: 10),
                              Text("+88 01871728535", style: TextStyle(color: Colors.teal, fontSize: 17,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),


                      ),


                    ],

                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        child:
                        Padding(
                          padding:  EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.mail, color: Colors.teal,),
                              SizedBox(width: 16),
                              Text("mohai.cse@gmail.com",
                                style: TextStyle(color: Colors.teal,
                                  fontFamily: "Time New Roman",
                                  fontSize: 16,
                                ),
                              ),

                            ],
                          ),
                        ),

                      ),

                    ],

                  ),

                ],
              ),

            ],
          ),
        ),
      ),

    );
  }
}
*/