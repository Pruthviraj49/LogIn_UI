import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomeSignUp());
}

class MyHomeSignUp extends StatefulWidget {
  const MyHomeSignUp({Key? key}) : super(key: key);

  @override
  State<MyHomeSignUp> createState() => _MyHomeSignUpState();
}

class _MyHomeSignUpState extends State<MyHomeSignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 110, 0, 0),
                    child: Text(
                      "Sign",
                      style: TextStyle(
                          fontSize: 55.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 175, 0, 0),
                    child: Text(
                      "Up",
                      style: TextStyle(
                          fontSize: 55.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(90, 175, 0, 0),
                    child: Text(
                      ".",
                      style: TextStyle(
                          fontSize: 55.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: "Name",
                          labelStyle: TextStyle(color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: "Password ",
                          labelStyle: TextStyle(color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                    ),

                    SizedBox(
                      height: 40,
                    ),

                    // Login custom button

                    Container(
                      height: 40.0,
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: const Offset(3.0, 4.0),
                              blurRadius: 1.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Login with Google custom button

                    Container(
                      child: GestureDetector(
                        // When the child is tapped,
                        onTap: () {
                          // clicked();
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 40.0,
                          color: Colors.white,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(Icons.undo),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Go Back",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
