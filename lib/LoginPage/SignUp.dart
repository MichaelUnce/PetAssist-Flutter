import 'package:flutter/material.dart';
import 'package:myapp/widgets/input_field.dart';
import 'package:myapp/widgets/agree.dart';
import 'package:myapp/widgets/gender.dart';
import 'Login.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(186, 83, 112, 1.0),
                Color.fromRGBO(244, 226, 216, 1.0)
              ]),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: 60.0, bottom: 60.0, left: 120.0, right: 120.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0)),
            elevation: 5.0,
            child: Container(
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 3.3,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.amberAccent,
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 85.0, right: 50.0, left: 50.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 60.0,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40.0, vertical: 0.0),
                              child: Text(
                                "Let's get you set up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 2.0,
                                        color: Colors.black,
                                        offset: Offset(1.0, 1.0),
                                      ),
                                    ]),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40.0, vertical: 0.0),
                              child: Text(
                                "It should only take a couple of minutes to create your account",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 2.0,
                                        color: Colors.black,
                                        offset: Offset(1.0, 1.0),
                                      ),
                                    ]),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            FlatButton(
                              color: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return new Login();
                                }));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 2.0,
                                        color: Colors.black,
                                        offset: Offset(1.0, 1.0),
                                      ),
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 50.0,
                              ),
                              child: Image.asset(
                                "images/paw.png",
                                width: 300,
                                height: 300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: 15.0, right: 70.0, left: 70.0, bottom: 10.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius: 2.0,
                                  color: Colors.black,
                                  offset: Offset(1.0, 1.0),
                                ),
                              ]),
                        ),
                        SizedBox(height: 21.0),

                        //InputField Widget from the widgets folder
                        InputField(label: "Username", content: ""),

                        SizedBox(height: 20.0),

                        //Gender Widget from the widgets folder
                        Gender(),

                        SizedBox(height: 20.0),

                        //InputField Widget from the widgets folder
                        InputField(label: "Date of birth", content: ""),

                        SizedBox(height: 20.0),

                        //InputField Widget from the widgets folder
                        InputField(
                            label: "Email", content: "anything@gmail.com"),

                        SizedBox(height: 20.0),

                        InputField(label: "Password", content: "********"),

                        SizedBox(height: 20.0),

                        //Membership Widget from the widgets folder
                        Agreement(),

                        SizedBox(
                          height: 40.0,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50.0),
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 170.0,
                              ),
                              FlatButton(
                                color: Colors.grey[200],
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Cancel"),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              FlatButton(
                                color: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                onPressed: () {},
                                child: Text(
                                  "Create Account",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 2.0,
                                          color: Colors.black,
                                          offset: Offset(1.0, 1.0),
                                        ),
                                      ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
