import 'package:banana/screens/DashboardScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => DashboardScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.only(top: 32),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bk_no_logo.png'),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Image(
                    height: 100,
                    width: 100,
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff152F99), width: 2)),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Color(0xff152F99)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff152F99), width: 2)),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff152F99), width: 2)),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Color(0xff152F99)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff152F99), width: 2)),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                       _navigateToNextScreen(context);
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: Text(
                    "Or",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                       _navigateToNextScreen(context);
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      FaIcon(FontAwesomeIcons.google, color: Colors.white,),
                      SizedBox(width: 16,),
                      Text(
                        "Login with Google",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ]),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
