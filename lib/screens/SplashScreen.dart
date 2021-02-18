import 'package:flutter/material.dart';

import 'LoginScreen.dart';

class SplashScreen extends StatelessWidget {
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bk_no_logo.png'),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/logo.png'),
              height: 200,
              width: 200,
            ),

             Padding(
               padding: const EdgeInsets.all(24.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "EXISTING USER",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: "SourceSansPro"),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: TextButton(
                              onPressed: () {
                                _navigateToNextScreen(context);
                              },
                              child: Text(
                                'SIGN IN',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: "SourceSansPro",
                                ),
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xff143957),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "NEW USER ",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: "SourceSansPro"),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: TextButton(
                              onPressed: () {
                                _navigateToNextScreen(context);
                              },
                              child: Text(
                                'SIGN UP',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontFamily: "SourceSansPro"),
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xff143957),
                              ),
                            ),
                          ),
                        ]),
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
