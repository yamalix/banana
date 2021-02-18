import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  FancyDrawerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FancyDrawerWrapper(
        controller: _controller,
        backgroundColor: Color(0xff122261),
        hideOnContentTap: true,
        drawerItems: [
          SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/face.jpg'),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Thomas Johnson",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "SourceSansPro"),
                      ),
                      Text(
                        "johndoe@gmail.com",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: "SourceSansPro"),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.white70,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "DASHBOARD ",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SourceSansPro"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "NOTICE",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SourceSansPro"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "EVENTS",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SourceSansPro"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "NOTES",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SourceSansPro"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "DIRECTORY",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SourceSansPro"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "DEPARTMENTS",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SourceSansPro"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "COMPANY STRUCTURE",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SourceSansPro"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "MESSAGES",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SourceSansPro"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "TODO LIST",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SourceSansPro"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.white70,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SourceSansPro"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SourceSansPro"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Log Out",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SourceSansPro"),
                  ),
                ]),
          ),
        ],
        child: SafeArea(
          child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  _controller.toggle();
                },
              ),
              title: Text("HOME"),
              actions: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: null),
                  ),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/front.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  Container(
                    transform: Matrix4.translationValues(0.0, -150.0, 0.0),
                    child:
                      Padding(
                        padding: const EdgeInsets.only(left:30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello,",  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(height: 8,),
                            Text("Thomas Johnson", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),)
                          ],

                        ),
                      ),
                  ),
                    Container(
                      transform: Matrix4.translationValues(0.0, -120.0, 0.0),
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Container(
                              width: 250,
                              child: Stack(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/front.jpg'),
                                    fit: BoxFit.cover,
                                    height: 200,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        // 10% of the width, so there are ten blinds.
                                        colors: [
                                          const Color(0xff143957),
                                          const Color(0x00000000)
                                        ], // red to yellow
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 8,
                                      left: 0,
                                      right: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Upcoming General Annual Meeting, ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "SourceSansPro",
                                              fontSize: 18),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Container(
                              width: 250,
                              child: Stack(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/2.jpg'),
                                    fit: BoxFit.cover,
                                    height: 200,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        // 10% of the width, so there are ten blinds.
                                        colors: [
                                          const Color(0xff143957),
                                          const Color(0x00000000)
                                        ], // red to yellow
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 8,
                                      left: 0,
                                      right: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Beware of Corona Virus, Please take all precautions",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "SourceSansPro",
                                              fontSize: 18),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Container(
                              width: 250,
                              child: Stack(
                                children: [
                                  Image(
                                    image:
                                    AssetImage('assets/images/inv.jpg'),
                                    fit: BoxFit.cover,
                                    height: 200,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        // 10% of the width, so there are ten blinds.
                                        colors: [
                                          const Color(0xff143957),
                                          const Color(0x00000000)
                                        ], // red to yellow
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 8,
                                      left: 0,
                                      right: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Congratulations Kilimanjaro Team',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "SourceSansPro",
                                              fontSize: 18),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, left: 20,right: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        transform: Matrix4.translationValues(0.0, -60.0, 0.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    height: 150,
                                    decoration:
                                        BoxDecoration(color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.1),
                                              spreadRadius: 1,
                                              blurRadius: 1,
                                            ),
                                          ],
                                        ),

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image(image: AssetImage('assets/images/edit.png'),
                                        height: 70,width: 70,),
                                        SizedBox(height: 10,),
                                        Text(' MY NOTES', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),)
                                      ],
                                    ),

                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    height: 150,
                                    decoration:
                                        BoxDecoration(color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.1),
                                              spreadRadius: 1,
                                              blurRadius: 1,
                                              offset: Offset(0, 3), // changes position of shadow
                                            ),
                                          ],),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image(image: AssetImage('assets/images/event.png'),
                                          height: 70,width: 70,),
                                        SizedBox(height: 10,),
                                        Text('EVENT', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),)
                                      ],
                                    ),

                                  ),

                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    height: 150,
                                    decoration:
                                    BoxDecoration(color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image(image: AssetImage('assets/images/contact.png'),
                                          height: 70,width: 70,),
                                        SizedBox(height: 10,),
                                        Text('DIRECTORY', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),)
                                      ],
                                    ),

                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    height: 150,
                                    decoration:
                                    BoxDecoration(color: Colors.white,

                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image(image: AssetImage('assets/images/diagram.png'),
                                          height: 70,width: 70,),
                                        SizedBox(height: 10,),
                                        Text('DEPARTMENT', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),)
                                      ],
                                    ),

                                  ),
                                ),
                              ],
                            ),
                          SizedBox(height: 16,),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    height: 150,
                                    decoration:
                                    BoxDecoration(color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image(image: AssetImage('assets/images/chat.png'),
                                          height: 70,width: 70,),
                                        SizedBox(height: 10,),
                                        Text('MESSAGES', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),)
                                      ],
                                    ),

                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    height: 150,
                                    decoration:
                                    BoxDecoration(color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image(image: AssetImage('assets/images/complete.png'),
                                          height: 70,width: 70,),
                                        SizedBox(height: 10,),
                                        Text('TODO LIST', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),)
                                      ],
                                    ),


                                  ),

                                ),
                              ],
                            ),
                            SizedBox(height: 16,),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    height: 150,
                                    decoration:
                                    BoxDecoration(color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image(image: AssetImage('assets/images/contact.png'),
                                          height: 70,width: 70,),
                                        SizedBox(height: 10,),
                                        Text('NOTICE', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),)
                                      ],
                                    ),

                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    height: 150,
                                    decoration:
                                    BoxDecoration(color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 2,
                                          blurRadius: 1,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image(image: AssetImage('assets/images/sticky.png'),
                                          height: 70,width: 70,),
                                        SizedBox(height: 10,),
                                        Text('COMPANY STRUCTURE', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
